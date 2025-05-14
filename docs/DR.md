# Collecting ODF must-gather in a DR cluster

## Resources collected with -dr argument in a RDR cluster

When running `oc adm must-gather --image=quay.io/rhceph-dev/ocs-must-gather -- /usr/bin/gather --dr` with `dr` argument in RDR cluster, the following directory structure is generated:

```
├── cluster-scoped-resources
│   └── migrations.kubevirt.io
│       └── migrationpolicies.yaml
├── event-filter.html
├── gather-debug.log
├── gather.logs
├── namespaces
│   ├── openshift-dr-ops
│   │   ├── apps
│   │   │   ├── daemonsets.yaml
│   │   │   ├── deployments.yaml
│   │   │   ├── replicasets.yaml
│   │   │   └── statefulsets.yaml
│   │   ├── apps.openshift.io
│   │   │   └── deploymentconfigs.yaml
│   │   ├── autoscaling
│   │   ├── core
│   │   ├── kubevirt.io
│   │   ├── monitoring.coreos.com
│   │   ├── networking.k8s.io
│   │   ├── oc_output
│   │   │   ├── configmap
│   │   │   ├── desc_configmap
│   │   │   └── secrets
│   │   │   └── pods
│   │   ├── openshift-dr-ops.yaml
│   │   ├── policy
│   ├── openshift-dr-system
│   │   ├── apps
│   │   │   ├── daemonsets.yaml
│   │   │   ├── deployments.yaml
│   │   │   ├── replicasets.yaml
│   │   │   └── statefulsets.yaml
│   │   ├── apps.openshift.io
│   │   │   └── deploymentconfigs.yaml
│   │   ├── core
│   │   ├── monitoring.coreos.com
│   │   ├── networking.k8s.io
│   │   ├── oc_output
│   │   │   ├── configmap
│   │   │   ├── desc_configmap
│   │   │   ├── pods
│   │   │   └── secrets
│   │   ├── openshift-dr-system.yaml
│   │   ├── pods
│   └── openshift-operators
│       ├── apps
│       │   ├── daemonsets.yaml
│       │   ├── deployments.yaml
│       │   ├── replicasets.yaml
│       │   └── statefulsets.yaml
│       ├── apps.openshift.io
│       │   └── deploymentconfigs.yaml
│       ├── autoscaling
│       ├── clone.kubevirt.io
│       ├── core
│       │   ├── configmaps.yaml
│       │   ├── endpoints.yaml
│       │   ├── events.yaml
│       │   ├── persistentvolumeclaims.yaml
│       │   ├── pods.yaml
│       │   ├── replicationcontrollers.yaml
│       │   ├── secrets.yaml
│       │   └── services.yaml
│       ├── discovery.k8s.io
│       ├── export.kubevirt.io
│       ├── hco.kubevirt.io
│       ├── image.openshift.io
│       ├── instancetype.kubevirt.io
│       ├── k8s.ovn.org
│       ├── kubevirt.io
│       ├── monitoring.coreos.com
│       ├── networking.k8s.io
│       ├── oc_output
│       │   ├── configmap
│       │   ├── desc_configmap
│       │   └── secrets
│       ├── openshift-operators.yaml
│       ├── policy
│       ├── pool.kubevirt.io
│       ├── route.openshift.io
│       └── snapshot.kubevirt.io
├── pod-metadata.json
└── timestamp

81 directories, 154 files
```
## Resources collected in RDR cluster in default mode

* Collecting ODF must-gather in RDR cluster in a default mode takes hours to get collected specially because of heavy ceph pod logs.

`TODO: Add directory structure for default mode in RDR cluster.`

**Note** 
This Directory structures are just an example output and includes only important files that would be required by the users for debugging. It may include more directories based on the state of the cluster. Also te files inside each sub-directory is also not included to avoid clumpsy data.