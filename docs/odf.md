# Collecting ODF must-gather in a default ODF cluster

## Resources collected in default mode in ODF cluster

When running `oc adm must-gather --image=quay.io/rhceph-dev/ocs-must-gather` in default mode in ODF cluster, the following directory structure is generated:

```
├── ceph
│   ├── event-filter.html
│   ├── logs
│   │   ├── gather-ceph fs dump-debug.log
│   │   ├── gather-ceph fs dump-json-debug.log
│   │   ├── gather-ceph mon dump-debug.log
│   │   ├── gather-ceph mon dump-json-debug.log
│   │   ├── gather-ceph osd blacklist ls-debug.log
│   │   ├── gather-ceph osd blacklist ls-json-debug.log
│   │   ├── gather-ceph pg dump-debug.log
│   │   ├── gather-ceph pg dump-json-debug.log
│   │   ├── gather-ceph report-debug.log
│   │   ├── gather-ceph report-json-debug.log
│   │   ├── gather-rbd-mirror-pool-info-builtin-mgr-debug.log
│   │   ├── gather-rbd-mirror-pool-status-builtin-mgr-debug.log
│   │   └── gather-rbd-trash-ls-builtin-mgr-json-debug.log
│   ├── must_gather_commands
│   │   ├── ceph_auth_list
│   │   ├── ceph_balancer_status
│   │   ├── ceph_config_dump
│   │   ├── ceph_config-key_ls
│   │   ├── ceph_crash_stat
│   │   ├── ceph_device_ls
│   │   ├── ceph_df_detail
│   │   ├── ceph_fs_dump
│   │   ├── ceph_fs_ls
│   │   ├── ceph_fs_status
│   │   ├── cephfs_subvol_and_snap_info
│   │   ├── ceph_fs_subvolumegroup_ls_ocs-storagecluster-cephfilesystem
│   │   ├── ceph_fs_subvolume_ls_ocs-storagecluster-cephfilesystem_csi
│   │   ├── ceph_healthcheck_history_ls
│   │   ├── ceph_health_detail
│   │   ├── ceph_log_last_10000_debug_audit
│   │   ├── ceph_log_last_10000_debug_cluster
│   │   ├── ceph_mds_stat
│   │   ├── ceph_mgr_dump
│   │   ├── ceph_mgr_module_ls
│   │   ├── ceph_mgr_services
│   │   ├── ceph_mon_dump
│   │   ├── ceph_mon_stat
│   │   ├── ceph_osd_blocklist_ls
│   │   ├── ceph_osd_blocked-by
│   │   ├── ceph_osd_crush_class_ls
│   │   ├── ceph_osd_crush_dump
│   │   ├── ceph_osd_crush_rule_dump
│   │   ├── ceph_osd_crush_rule_ls
│   │   ├── ceph_osd_crush_show-tunables
│   │   ├── ceph_osd_crush_weight-set_dump
│   │   ├── ceph_osd_df
│   │   ├── ceph_osd_df_tree
│   │   ├── ceph_osd_dump
│   │   ├── ceph_osd_getmaxosd
│   │   ├── ceph_osd_lspools
│   │   ├── ceph_osd_numa-status
│   │   ├── ceph_osd_perf
│   │   ├── ceph_osd_pool_autoscale-status
│   │   ├── ceph_osd_pool_ls_detail
│   │   ├── ceph_osd_stat
│   │   ├── ceph_osd_tree
│   │   ├── ceph_osd_utilization
│   │   ├── ceph_pg_dump
│   │   ├── ceph_pg_stat
│   │   ├── ceph_progress
│   │   ├── ceph_progress_json
│   │   ├── ceph_quorum_status
│   │   ├── ceph_rbd_task_list
│   │   ├── ceph_report
│   │   ├── ceph_service_dump
│   │   ├── ceph_status
│   │   ├── ceph_time-sync-status
│   │   ├── ceph_versions
│   │   ├── ceph-volume_raw_list
│   │   ├── config_osd.0
│   │   ├── config_osd.1
│   │   ├── config_osd.2
│   │   ├── pools_rbd_ocs-storagecluster-cephblockpool
│   │   ├── rados_cephfs_objects
│   │   ├── rados_ls_--pool=ocs-storagecluster-cephblockpool
│   │   ├── rados_ls_--pool=ocs-storagecluster-cephfilesystem-metadata_--namespace=csi
│   │   ├── rados_lspools
│   │   ├── rados_rbd_objects_ocs-storagecluster-cephblockpool
│   │   ├── rbd_mirror_image_status_ocs-storagecluster-cephblockpool
│   │   ├── rbd_mirror_pool_info_builtin-mgr
│   │   ├── rbd_mirror_pool_info_ocs-storagecluster-cephblockpool
│   │   ├── rbd_mirror_pool_status_builtin-mgr
│   │   ├── rbd_mirror_pool_status_ocs-storagecluster-cephblockpool
│   │   ├── rbd_mirror_snapshot_schedule_ls
│   │   ├── rbd_mirror_snapshot_schedule_status
│   │   ├── rbd_trash_ls_ocs-storagecluster-cephblockpool
│   │   ├── rbd_vol_and_snap_info_builtin-mgr
│   │   └── rbd_vol_and_snap_info_ocs-storagecluster-cephblockpool
│   ├── must_gather_commands_json_output
│   │   ├── ceph_auth_list_--format_json-pretty
│   │   ├── ceph_balancer_pool_ls_--format_json-pretty
│   │   ├── ceph_balancer_status_--format_json-pretty
│   │   ├── ceph_config_dump_--format_json-pretty
│   │   ├── ceph_config-key_ls_--format_json-pretty
│   │   ├── ceph_crash_ls_--format_json-pretty
│   │   ├── ceph_crash_stat_--format_json-pretty
│   │   ├── ceph_device_ls_--format_json-pretty
│   │   ├── ceph_df_detail_--format_json-pretty
│   │   ├── ceph_fs_dump_--format_json-pretty
│   │   ├── ceph_fs_ls_--format_json-pretty
│   │   ├── ceph_fs_status_--format_json-pretty
│   │   ├── ceph_fs_subvolumegroup_ls_ocs-storagecluster-cephfilesystem_--format_json-pretty
│   │   ├── ceph_fs_subvolume_ls_ocs-storagecluster-cephfilesystem_csi_--format_json-pretty
│   │   ├── ceph_healthcheck_history_ls_--format_json-pretty
│   │   ├── ceph_health_detail_--format_json-pretty
│   │   ├── ceph_log_last_10000_debug_audit_--format_json-pretty
│   │   ├── ceph_log_last_10000_debug_cluster_--format_json-pretty
│   │   ├── ceph_mds_stat_--format_json-pretty
│   │   ├── ceph_mgr_dump_--format_json-pretty
│   │   ├── ceph_mgr_module_ls_--format_json-pretty
│   │   ├── ceph_mgr_services_--format_json-pretty
│   │   ├── ceph_mon_dump_--format_json-pretty
│   │   ├── ceph_mon_stat_--format_json-pretty
│   │   ├── ceph_osd_blacklist_ls_--format_json-pretty
│   │   ├── ceph_osd_blocked-by_--format_json-pretty
│   │   ├── ceph_osd_crush_class_ls_--format_json-pretty
│   │   ├── ceph_osd_crush_dump_--format_json-pretty
│   │   ├── ceph_osd_crush_rule_dump_--format_json-pretty
│   │   ├── ceph_osd_crush_rule_ls_--format_json-pretty
│   │   ├── ceph_osd_crush_show-tunables_--format_json-pretty
│   │   ├── ceph_osd_crush_weight-set_dump_--format_json-pretty
│   │   ├── ceph_osd_crush_weight-set_ls_--format_json-pretty
│   │   ├── ceph_osd_df_--format_json-pretty
│   │   ├── ceph_osd_df_tree_--format_json-pretty
│   │   ├── ceph_osd_dump_--format_json-pretty
│   │   ├── ceph_osd_getmaxosd_--format_json-pretty
│   │   ├── ceph_osd_lspools_--format_json-pretty
│   │   ├── ceph_osd_numa-status_--format_json-pretty
│   │   ├── ceph_osd_perf_--format_json-pretty
│   │   ├── ceph_osd_pool_autoscale-status_--format_json-pretty
│   │   ├── ceph_osd_pool_ls_detail_--format_json-pretty
│   │   ├── ceph_osd_stat_--format_json-pretty
│   │   ├── ceph_osd_tree_--format_json-pretty
│   │   ├── ceph_osd_utilization_--format_json-pretty
│   │   ├── ceph_pg_dump_--format_json-pretty
│   │   ├── ceph_pg_stat_--format_json-pretty
│   │   ├── ceph_progress_--format_json-pretty
│   │   ├── ceph_progress_json_--format_json-pretty
│   │   ├── ceph_quorum_status_--format_json-pretty
│   │   ├── ceph_rbd_task_list_--format_json-pretty
│   │   ├── ceph_report_--format_json-pretty
│   │   ├── ceph_service_dump_--format_json-pretty
│   │   ├── ceph_status_--format_json-pretty
│   │   ├── ceph_time-sync-status_--format_json-pretty
│   │   └── ceph_versions_--format_json-pretty
│   ├── namespaces
│   │   └── openshift-storage
│   └── timestamp
├── ceph_logs
│   ├── ceph_daemon_log_compute-0
│   ├── csi_log_compute-0
│   ├── journal_compute-0
│   └── kernel_compute-2
├── cluster-scoped-resources
│   ├── core
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
│   ├── rbac.authorization.k8s.io
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
│   │   ├── csiaddonsnode
│   │   ├── drivers.csi.ceph.io
│   │   ├── encryptionkeyrotationcronjob
│   │   ├── encryptionkeyrotationjob
│   │   ├── event-filter.html
│   │   ├── namespaces
│   │   │   ├── openshift-storage
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
│   │   ├── core
│   │   │   ├── configmaps.yaml
│   │   │   ├── endpoints.yaml
│   │   │   ├── events.yaml
│   │   │   ├── persistentvolumeclaims.yaml
│   │   │   ├── pods.yaml
│   │   │   ├── replicationcontrollers.yaml
│   │   │   ├── secrets.yaml
│   │   │   └── services.yaml
│   │   ├── oc_output
│   │   │   ├── configmap
│   │   │   ├── desc_configmap
│   │   │   └── secrets
│   └── openshift-storage
│       ├── apps
│       │   ├── deployments.yaml
│       │   ├── replicasets.yaml
│       │   └── statefulsets.yaml
│       ├── apps.openshift.io
│       ├── core
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
│       ├── kubevirt.io
│       ├── networking.k8s.io
│       │   └── networkpolicies.yaml
│       ├── oc_output
│       │   ├── all_-o_wide
│       │   ├── cephfilesystemsubvolumegroups.ceph.rook.io
│       │   ├── configmap
│       │   ├── configmaps
│       │   ├── csv
│       │   ├── deployments
│       │   ├── events_desc
│       │   ├── events_get
│       │   ├── events_yaml
│       │   ├── external_cluster_details.json
│       │   ├── hpa
│       │   ├── installplan
│       │   ├── pods
│       │   ├── role
│       │   ├── rolebinding
│       │   ├── secrets
│       │   ├── services
│       │   ├── storagecluster
│       │   ├── storagecluster.yaml
│       │   ├── storageconsumer.yaml
│       │   ├── storageprofiles
│       │   ├── storagesystem
│       │   └── storagesystem.yaml
│       ├── openshift-storage.yaml
│       ├── operators.coreos.com
│       │   └── installplans
│       ├── pods
├── noobaa
├── pod-metadata.json
├── timestamp
└── validatingwebhookconfiguration

652 directories, 2051 files
```

## Resources collected with -odf argument in ODF cluster

When running `oc adm must-gather --image=quay.io/rhceph-dev/ocs-must-gather -- /usr/bin/gather --odf` in default mode in ODF cluster, the following directory structure is generated:

```
├── ceph
│   ├── event-filter.html
│   ├── logs
│   ├── must_gather_commands
│   ├── must_gather_commands_json_output
│   ├── namespaces
│   │   └── openshift-storage
│   └── timestamp
├── ceph_logs
│   ├── ceph_daemon_log_lr5019ici3cpp33p-tw5bf-worker-1-4fld4
│   ├── csi_log_lr5019ici3cpp33p-tw5bf-worker-2-mz9qm
│   ├── journal_lr5019ici3cpp33p-tw5bf-worker-1-4fld4
│   └── kernel_lr5019ici3cpp33p-tw5bf-worker-3-cdnpq
├── cluster-scoped-resources
│   ├── core
│   │   ├── nodes
│   │   └── persistentvolumes
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
│   │   ├── get_clusterrole
│   │   ├── get_clusterrolebinding
│   │   ├── get_clusterversion
│   │   ├── get_csidriver
│   │   ├── get_infrastructures.config
│   │   ├── get_nodes_-o_wide_--show-labels
│   │   ├── get_pv
│   │   ├── get_sc
│   │   ├── get_scc
│   │   └── get_volumesnapshotclass
│   ├── rbac.authorization.k8s.io
│   │   ├── clusterrolebindings
│   │   └── clusterroles
│   ├── security.openshift.io
│   ├── snapshot.storage.k8s.io
│   └── storage.k8s.io
│       ├── csidrivers
│       └── storageclasses
├── event-filter.html
├── gather-debug.log
├── gather.logs
├── namespaces
│   ├── all
│   │   ├── cephconnections.csi.ceph.io
│   │   ├── clientprofilemappings.csi.ceph.io
│   │   ├── clientprofiles.csi.ceph.io
│   │   ├── csiaddonsnode
│   │   ├── drivers.csi.ceph.io
│   │   ├── encryptionkeyrotationcronjob
│   │   ├── encryptionkeyrotationjob
│   │   ├── event-filter.html
│   │   ├── namespaces
│   │   │   └── openshift-storage
│   │   ├── network-attachment-definitions
│   │   ├── obc
│   │   ├── operatorconfigs.csi.ceph.io
│   │   ├── pvc
│   │   ├── recipe.ramendr.openshift.io
│   │   ├── reclaimspacecronjobs
│   │   ├── reclaimspacejob
│   │   ├── timestamp
│   │   ├── volumereplication
│   │   └── volumesnapshot
│   └── openshift-storage
│       ├── apps
│       ├── core
│       ├── oc_output
│       │   ├── all_-o_wide
│       │   ├── cephfilesystemsubvolumegroups.ceph.rook.io
│       │   ├── configmap
│       │   ├── csv
│       │   ├── events_desc
│       │   ├── events_get
│       │   ├── events_yaml
│       │   ├── external_cluster_details.json
│       │   ├── hpa
│       │   ├── installplan
│       │   ├── pods
│       │   ├── role
│       │   ├── rolebinding
│       │   ├── secrets
│       │   ├── storagecluster
│       │   ├── storagecluster.yaml
│       │   ├── storageconsumer
│       │   ├── storageconsumer.yaml
│       │   ├── storagesystem.yaml
│       │   └── subscription
│       ├── openshift-storage.yaml
│       ├── operators.coreos.com
│       │   ├── installplans
│       │   └── subscriptions
│       ├── pods
├── pod-metadata.json
└── timestamp

801 directories, 1595 files
```


**Note** 
This Directory structures are just an example output and includes only important files that would be required by the users for debugging. It may include more directories based on the state of the cluster. Also te files inside each sub-directory is also not included to avoid clumpsy data.