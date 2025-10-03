### Example 1: List K8s Cluster lables
```powershell
$k8sCluster = (Get-ZNK8SCluster).Items[0]
(Get-ZNK8SClusterLabel -K8SClusterId $k8sCluster.id).Items
```

```output
ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : apiserver
Namespaces  : {}
Nodes       : {}
Value       : true
Workloads   : {apiserver-5bb9ddb758, apiserver-c886c4f49, apiserver-ddc85c599, apiserver…}

ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : app
Namespaces  : {}
Nodes       : {}
Value       : assisted-installer-controller
Workloads   : {assisted-installer-controller}

ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : app
Namespaces  : {}
Nodes       : {}
Value       : authentication-operator
Workloads   : {authentication-operator, authentication-operator-c45b9fb9c}
...
```

This cmdlet lists K8s Cluster labels.
