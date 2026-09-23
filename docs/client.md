# Collecting ODF must-gather in Provider-Consumer Cluster

## Resources collected with -pc argument in client cluster

When running `oc adm must-gather --image=quay.io/rhceph-dev/ocs-must-gather -- /usr/bin/gather -pc` in client cluster, the following directory structure is generated:

### Directory Tree Overview

```
├── ceph_logs
│   ├── ceph_daemon_log_cl-418-b-jgpx5-9l8xv
│   ├── coredump_cl-418-b-jgpx5-mzqsl
│   ├── crash_cl-418-b-jgpx5-mzqsl
│   ├── csi_log_cl-418-b-jgpx5-9l8xv
│   │   └── cephcsi
├── cluster-scoped-resources
│   └── ocs.openshift.io
│       ├── storageclaims
│       └── storageclients
├── csidriver
│   ├── csidriver.yaml
│   ├── desc_csidriver
│   └── get_csidriver
├── event-filter.html
├── gather-debug.log
├── gather.logs
├── namespaces
│   └── openshift-storage-client
│       ├── apps
│       ├── apps.openshift.io
│       ├── autoscaling
│       ├── batch
│       ├── build.openshift.io
│       ├── core
│       ├── oc_output
│       │   ├── configmaps
│       │   ├── cronjobs
│       │   ├── deployments
│       │   ├── pods
│       │   ├── secrets
│       │   ├── services
│       │   ├── storageclients
│       │   └── subscription
│       ├── openshift-storage-client.yaml
│       ├── operators.coreos.com
│       │   └── subscriptions
│       ├── pods
│       ├── policy
│       └── route.openshift.io
├── pod-metadata.json
├── storageclaim
├── storageclients
├── timestamp
└── validatingwebhookconfiguration
```

## Resources collected in default mode in client cluster

When running `oc adm must-gather --image=quay.io/rhceph-dev/ocs-must-gather` in default mode in client cluster, the following directory structure is generated:

### Directory Tree Overview

```
├── ceph_logs
│   ├── ceph_daemon_log_cl-418-b-jgpx5-9l8xv
│   ├── coredump_cl-418-b-jgpx5-9l8xv
│   ├── crash_cl-418-b-jgpx5-9l8xv
│   ├── csi_log_cl-418-b-jgpx5-mzqsl
│   │   └── cephcsi
│   ├── journal_cl-418-b-jgpx5-mzqsl
│   └── kernel_cl-418-b-jgpx5-mzqsl
├── cluster-scoped-resources
│   ├── core
│   ├── oc_output
│   │   ├── desc_clusterrole
│   │   ├── desc_clusterrolebinding
│   │   ├── desc_clusterversion
│   │   ├── desc_csidriver
│   │   ├── desc_infrastructures.config
│   │   ├── desc_nodes
│   │   ├── desc_sc
│   │   ├── desc_scc
│   │   ├── desc_volumesnapshotclass
│   │   ├── get_clusterrole
│   │   ├── get_clusterrolebinding
│   │   ├── get_clusterversion
│   │   ├── get_csidriver
│   │   ├── get_infrastructures.config
│   │   ├── get_nodes_-o_wide_--show-labels
│   │   ├── get_sc
│   │   ├── get_scc
│   │   └── get_volumesnapshotclass
│   ├── ocs.openshift.io
│   │   ├── storageclaims
│   │   └── storageclients
│   ├── rbac.authorization.k8s.io
│   │   ├── clusterrolebindings
│   │   └── clusterroles
│   ├── security.openshift.io
│   │   └── securitycontextconstraints
│   ├── snapshot.storage.k8s.io
│   │   └── volumesnapshotclasses
│   └── storage.k8s.io
│       ├── csidrivers
│       └── storageclasses
├── csidriver
│   ├── csidriver.yaml
│   ├── desc_csidriver
│   └── get_csidriver
├── event-filter.html
├── gather-debug.log
├── gather.logs
├── namespaces
│   ├── all
│   │   ├── cephconnections.csi.ceph.io
│   │   ├── clientprofilemappings.csi.ceph.io
│   │   ├── clientprofiles.csi.ceph.io
│   │   ├── cluster-scoped-resources
│   │   ├── csiaddonsnode
│   │   ├── drivers.csi.ceph.io
│   │   ├── encryptionkeyrotationcronjob
│   │   ├── encryptionkeyrotationjob
│   │   ├── event-filter.html
│   │   ├── namespaces
│   │   │   └── openshift-storage-client
│   │   │       ├── csiaddons.openshift.io
│   │   │       │   └── csiaddonsnodes
│   │   │       └── csi.ceph.io
│   │   │           ├── cephconnections
│   │   │           ├── clientprofiles
│   │   │           ├── drivers
│   │   │           └── operatorconfigs
│   │   ├── network-attachment-definitions
│   │   ├── obc
│   │   ├── operatorconfigs.csi.ceph.io
│   │   ├── pvc
│   │   ├── reclaimspacecronjobs
│   │   ├── reclaimspacejob
│   │   ├── storageclaim
│   │   ├── timestamp
│   │   ├── volumereplication
│   │   └── volumesnapshot
│   ├── openshift-operators
│   │   ├── apps
│   │   ├── core
│   │   ├── oc_output
│   │   │   ├── configmap
│   │   │   ├── desc_configmap
│   │   │   └── secrets
│   │   ├── openshift-operators.yaml
│   │   ├── policy
│   └── openshift-storage-client
│       ├── apps
│       ├── apps.openshift.io
│       ├── autoscaling
│       ├── batch
│       ├── build.openshift.io
│       ├── core
│       ├── oc_output
│       │   ├── configmaps
│       │   ├── cronjobs
│       │   ├── deployments
│       │   ├── pods
│       │   ├── secrets
│       │   ├── services
│       │   ├── storageclients
│       │   └── subscription
│       ├── openshift-storage-client.yaml
│       ├── operators.coreos.com
│       │   └── subscriptions
│       ├── pods
│       ├── policy
│       └── route.openshift.io
├── noobaa
├── pod-metadata.json
├── storageclaim
├── storageclients
├── timestamp
└── validatingwebhookconfiguration

293 directories, 942 files
```

## Resources collected in default mode in provider cluster

When running `oc adm must-gather --image=quay.io/rhceph-dev/ocs-must-gather` in default mode in client cluster, the following directory structure is generated:

```
├── ceph_logs
│   ├── ceph_daemon_log_baremetal2-04
│   │   └── log
│   ├── coredump_baremetal2-04
│   ├── crash_baremetal2-04
│   │   └── posted
│   ├── csi_log_baremetal2-06
│   │   └── cephcsi
│   ├── journal_baremetal2-04
│   └── kernel_baremetal2-06
├── cluster-scoped-resources
│   ├── core
│   ├── migrations.kubevirt.io
│   │   └── migrationpolicies.yaml
│   ├── oc_output
│   │   ├── desc_clusterrole
│   │   ├── desc_clusterrolebinding
│   │   ├── desc_clusterversion
│   │   ├── desc_csidriver
│   │   ├── desc_infrastructures.config
│   │   ├── desc_nodes
│   │   ├── desc_pv
│   │   ├── desc_sc
│   │   ├── desc_scc
│   │   ├── desc_volumesnapshotclass
│   │   ├── desc_volumesnapshotcontent
│   │   ├── get_clusterrole
│   │   ├── get_clusterrolebinding
│   │   ├── get_clusterversion
│   │   ├── get_csidriver
│   │   ├── get_infrastructures.config
│   │   ├── get_nodes_-o_wide_--show-labels
│   │   ├── get_pv
│   │   ├── get_sc
│   │   ├── get_scc
│   │   ├── get_volumesnapshotclass
│   │   └── get_volumesnapshotcontent
│   ├── ocs.openshift.io
│   │   ├── storageclaims
│   │   └── storageclients
│   ├── rbac.authorization.k8s.io
│   │   ├── clusterrolebindings
│   │   └── clusterroles
│   ├── security.openshift.io
│   │   └── securitycontextconstraints
│   ├── snapshot.storage.k8s.io
│   │   ├── volumesnapshotclasses
│   │   └── volumesnapshotcontents
│   └── storage.k8s.io
│       ├── csidrivers
│       └── storageclasses
├── csidriver
│   ├── csidriver.yaml
│   ├── desc_csidriver
│   └── get_csidriver
├── event-filter.html
├── gather-debug.log
├── gather.logs
├── namespaces
│   ├── all
│   │   ├── cephconnections.csi.ceph.io
│   │   ├── clientprofilemappings.csi.ceph.io
│   │   ├── clientprofiles.csi.ceph.io
│   │   ├── cluster-scoped-resources
│   │   ├── csiaddonsnode
│   │   ├── drivers.csi.ceph.io
│   │   ├── encryptionkeyrotationcronjob
│   │   ├── encryptionkeyrotationjob
│   │   ├── event-filter.html
│   │   ├── namespaces
│   │   ├── network-attachment-definitions
│   │   ├── obc
│   │   ├── operatorconfigs.csi.ceph.io
│   │   ├── pvc
│   │   ├── recipe.ramendr.openshift.io
│   │   ├── reclaimspacecronjobs
│   │   ├── reclaimspacejob
│   │   ├── storageclaim
│   │   ├── timestamp
│   │   ├── volumereplication
│   │   └── volumesnapshot
│   ├── openshift-operators
│   │   ├── apps
│   │   ├── apps.openshift.io
│   │   ├── autoscaling
│   │   ├── batch
│   │   ├── core
│   │   ├── oc_output
│   │   │   ├── configmap
│   │   │   ├── desc_configmap
│   │   │   └── secrets
│   │   ├── openshift-operators.yaml
│   │   ├── policy
│   │   ├── pool.kubevirt.io
│   │   ├── route.openshift.io
│   │   └── snapshot.kubevirt.io
│   └── openshift-storage
│       ├── apps
│       │   ├── daemonsets.yaml
│       │   ├── deployments
│       │   ├── deployments.yaml
│       │   ├── replicasets.yaml
│       │   └── statefulsets.yaml
│       ├── apps.openshift.io
│       ├── autoscaling
│       ├── batch
│       │   ├── cronjobs
│       │   ├── cronjobs.yaml
│       │   └── jobs.yaml
│       ├── core
│       │   ├── configmaps
│       │   ├── configmaps.yaml
│       │   ├── endpoints.yaml
│       │   ├── events.yaml
│       │   ├── persistentvolumeclaims.yaml
│       │   ├── pods
│       │   ├── pods.yaml
│       │   ├── replicationcontrollers.yaml
│       │   ├── secrets
│       │   ├── secrets.yaml
│       │   ├── services
│       │   └── services.yaml
│       ├── oc_output
│       │   ├── all_-o_wide
│       │   ├── cephfilesystemsubvolumegroups.ceph.rook.io
│       │   ├── configmap
│       │   ├── configmaps
│       │   ├── cronjobs
│       │   ├── csv
│       │   ├── deployments
│       │   ├── events_desc
│       │   ├── events_get
│       │   ├── events_yaml
│       │   ├── external_cluster_details.json
│       │   ├── hpa
│       │   ├── installplan
│       │   ├── operatorconditions
│       │   ├── pods
│       │   ├── role
│       │   ├── rolebinding
│       │   ├── secrets
│       │   ├── services
│       │   ├── storageclients
│       │   ├── storagecluster
│       │   ├── storagecluster.yaml
│       │   ├── storageconsumer
│       │   ├── storageconsumer.yaml
│       │   ├── storageprofiles
│       │   ├── storagerequest
│       │   ├── storagesystem
│       │   ├── storagesystem.yaml
│       │   └── subscription
│       ├── ocs.openshift.io
│       │   └── storagerequests
│       ├── openshift-storage.yaml
│       ├── operators.coreos.com
│       │   ├── installplans
│       │   ├── operatorconditions
│       │   └── subscriptions
│       ├── pods
│       ├── policy
│       ├── pool.kubevirt.io
│       ├── route.openshift.io
│       └── snapshot.kubevirt.io
├── noobaa
│   ├── cnpg_info
│   ├── event-filter.html
│   ├── logs
│   │   └── openshift-storage
│   ├── namespaces
│   │   └── openshift-storage
│   │       ├── noobaa.io
│   │       └── oc_output
│   ├── raw_output
│   └── timestamp
├── pod-metadata.json
├── storageclaim
├── storageclients
├── timestamp
└── validatingwebhookconfiguration

1035 directories, 2356 files
```

**Note** 
This Directory structures are just an example output and includes only important files that would be required by the users for debugging. It may include more directories based on the state of the cluster. Also te files inside each sub-directory is also not included to avoid clumpsy data.