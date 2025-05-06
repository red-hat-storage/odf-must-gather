#!/usr/bin/env bash

namespace=$(oc get deploy --all-namespaces -o go-template --template='{{range .items}}{{if .metadata.labels}}{{printf "%s %v" .metadata.namespace (index .metadata.labels "olm.owner")}} {{printf "\n"}}{{end}}{{end}}' | grep -E 'ocs-operator|ocs-client-operator' | awk '{print $1}' | uniq)
reconcileStrategy=$(oc get storagecluster -n "${namespace}" -o go-template='{{range .items}}{{.spec.multiCloudGateway.reconcileStrategy}}{{"\n"}}{{end}}')

if [ -n "$(oc get storagecluster -n "${namespace}" -o go-template='{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')" ] && [ "${reconcileStrategy}" != "standalone" ]; then
    oc delete -f pod_helper.yaml
fi

# Add Ready nodes to the list
nodes=$(oc get nodes --no-headers | awk '/\yworker\y/{print $1}')

for node in ${nodes}; do
    pod_name=$(oc get pods -n "${namespace}"  | grep "${node//./}-debug" | awk '{print $1}')
    oc delete -n "${namespace}"  pod "$pod_name"
done
