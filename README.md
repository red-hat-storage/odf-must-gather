ODF must-gather
=================

`odf-must-gather` is a tool built on top of [OpenShift must-gather](https://github.com/openshift/must-gather)
that expands its capabilities to gather Openshift Container Storage for information.

### Usage
```sh
oc adm must-gather --image=registry.redhat.io/odf4/odf-must-gather-rhel9:v4.13 -- /usr/bin/gather -arg1 -arg2
```

List of arguments that can be passed to the above command are:
```
  -d,  --dr                 Collect DR logs
  -p,  --provider           Collect logs for provider/consumer cluster
  -n,  --nooba              Collect nooba logs
  -c,  --ceph               Collect ceph commands and pod logs
  -cl, --ceph-logs          Collect ceph daemon, kernel, journal logs and crash reports
  -ns, --namespaced         Collect namespaced resources
  -cs, --clusterscoped      Collect clusterscoped resources
  -h,  --help               Print this help message
```

## Description:

ODF must-gather can run in modular mode and can collect JUST
the resources you require to collect. You can use the args
listed above to achieve that. If no arg is supplied the script
will run in FULL collection mode and will gather all the resources
from your cluster. This might take longer on some environments.

Note: Provide each arg separately and do not chain them like:
```
        $ -dpnc          # Wrong
        $ -d -p -n -c    # Correct
```
```
Examples:
  $ $0 -d -n --ceph         # Collect DR, nooba and ceph logs only.
  $ $0 -h                   # Print help
```

The command above will create a local directory with a dump of the odf state.
Note that this command will only get data related to the odf part of the OpenShift cluster.

You will get a dump of:
- The ODF Operator namespaces (and its children objects)
- All namespaces (and their children objects) that belong to any ODF resources
- All ODF CRD's definitions
- All namespaces that contains ceph and noobaa
- Output of the following ceph commands
    ```
    ceph status
    ceph health detail
    ceph osd tree
    ceph osd stat
    ceph osd dump
    ceph mon stat
    ceph mon dump
    ceph df
    ceph report
    ceph osd df tree
    ceph fs dump
    ceph fs ls
    ceph pg dump
    ceph health detail
    ceph osd crush show-tunables
    ceph osd crush dump
    ceph mgr dump
    ceph mds stat
    ceph versions
    ```

In order to get data about other parts of the cluster (not specific to ODF) you should
run `oc adm must-gather` (without passing a custom image). Run `oc adm must-gather -h` to see more options.

### Building locally for testing
You need to be autheticated against the OpenShift registry CI, registry.ci.openshift.org in order to be able to pull the images in the `Dockerfile`.

Before proceeding make sure you have `oc` (OpenShift cli) installed.

Follow these steps to authenticate:

- Navigate to the OpenShift console for `app.ci` cluster located [here](https://console-openshift-console.apps.ci.l2s4.p1.openshiftapps.com/).
- Login using SSO
- Go to your profile name in the top right and select "Copy login command".
- Copy the displayed TOKEN
- Run `ODF_MG_TOKEN=YOUR_TOKEN_HERE make local`. 

See [here](https://github.com/red-hat-storage/odf-must-gather/pull/76) for more options on building locally.

### How to Contribute

- Refer and follow the standards mentioned in [ODF-MUST-GATHER How to Contribute](./CONTRIBUTING.md)
- Tag the Pull Request with `must-gather`
