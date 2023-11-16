#!/usr/bin/env bash

# Expect base collection path as an exported variable
# If it is not defined, use PWD instead
# shellcheck disable=SC2034
BASE_COLLECTION_PATH=${BASE_COLLECTION_PATH:-"$(pwd)"}

ns=$(oc get deploy --all-namespaces -o go-template --template='{{range .items}}{{if .metadata.labels}}{{printf "%s %v" .metadata.namespace (index .metadata.labels "olm.owner")}} {{printf "\n"}}{{end}}{{end}}' | grep ocs-operator | awk '{print $1}' | uniq)

POD_TEMPLATE="/templates/pod.template"

SED_DELIMITER=$(echo -en "\001")
safe_replace() {
    sed "s${SED_DELIMITER}${1}${SED_DELIMITER}${2}${SED_DELIMITER}g"
}

apply_helper_pod() {
    safe_replace <${POD_TEMPLATE} "NAMESPACE" "$1" | safe_replace "IMAGE_NAME" "$2" | safe_replace "MUST_GATHER" "$HOSTNAME" >pod_helper.yaml
    oc apply -f pod_helper.yaml
}

# Add Ready nodes to the list
nodes=$(oc get nodes --no-headers | awk '/\yworker\y/{print $1}')

# storing storagecluster name
storageClusterPresent=$(oc get storagecluster -n "${ns}" -o go-template='{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
# checking for mcg standalone cluster
reconcileStrategy=$(oc get storagecluster -n "${ns}" -o go-template='{{range .items}}{{.spec.multiCloudGateway.reconcileStrategy}}{{"\n"}}{{end}}')
deploy() {
    operatorImage=$(oc get pods -l app=rook-ceph-operator -n "${ns}" -o jsonpath="{range .items[*]}{@.spec.containers[0].image}+{end}" | tr "+" "\n" | head -n1)
    if [ -z "${storageClusterPresent}" ]; then
        dbglog "not creating helper pod since storagecluster is not present"
    elif [ -z "${operatorImage}" ]; then
        dbglog "not able to find the rook's operator image. Skipping collection of ceph command output"
    elif [ "${reconcileStrategy}" = "standalone" ]; then
        dbglog "not creating helper pod as this is a MCG only cluster"
    else
        dbglog "creating helper pod"
        apply_helper_pod "$ns" "$operatorImage"
    fi

    for node in ${nodes}; do
        oc debug nodes/"${node}" --to-namespace="${ns}" -- bash -c "sleep 100m" &
        printf "debugging node %s \n" "${node}"
    done
}

labels() {
    if [ -n "${storageClusterPresent}" ] && [ "${reconcileStrategy}" != "standalone" ]; then
        oc label pod -n "${ns}" "${HOSTNAME}"-helper must-gather-helper-pod=''
    fi
}

check_for_debug_pod() {
    debug_pod_name=$(oc get pods -n "${ns}" | grep "${node//./}-debug" | awk '{print $1}')
    # sleep for 60 seconds giving time for debug pod to get created
    sleep 60
    oc wait -n "${ns}" --for=condition=Ready pod/"$debug_pod_name" --timeout=200s
    if [ "$(oc get pods -n "${ns}" | grep "${node//./}-debug" | awk '{print $2}')" = "1/1" ]; then
        oc label -n "${ns}" pod "$debug_pod_name" "${node//./}"-debug='ready'
    fi
}

check_for_helper_pod() {
    # sleep for 60 seconds giving time for helper pod to get created
    sleep 60
    oc wait -n "${ns}" --for=condition=Ready pod/"${HOSTNAME}"-helper --timeout=200s
}

cleanup() {
    dbglog "checking for existing must-gather resource"
    pods=$(oc get pods --no-headers -n "${ns}" -l must-gather-helper-pod='' | awk '{print $1}')
    if [ -n "${storageClusterPresent}" ] && [ -n "${pods}" ]; then
        SAVEIFS=$IFS   # Save current IFS
        IFS=$'\n'      # Change IFS to new line
        pods=("$pods") # split to array $pods
        IFS=$SAVEIFS   # Restore IFS
        dbglog "deleting existing must-gather resource"
        for pod in "${pods[@]}"; do
            oc delete pod "${pod}" -n "${ns}"
        done
    fi
}

cleanup
deploy
labels
pids=()
if [ -n "${storageClusterPresent}" ] && [ "${reconcileStrategy}" != "standalone" ]; then
    check_for_helper_pod &
    pids+=($!)
fi
for node in ${nodes}; do
    check_for_debug_pod &
    pids+=($!)
done

# wait for all pids
if [ -n "${pids[*]}" ]; then
    dbglog "waiting for ${pids[*]} to terminate"
    wait "${pids[@]}"
fi
