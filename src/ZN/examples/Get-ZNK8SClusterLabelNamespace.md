### Example 1: List K8s Cluster Label namespaces
```powershell
$k8sCluster = (Get-ZNK8SCluster).Items[0]
(Get-ZNK8SClusterLabelNamespace -K8SClusterId $k8sCluster.id -label name:znk8s).Items
```

```output
ApplicationsList : {znk8s-discovery}
ClusterId        : k:c:osyL1WCW
ClusterName      : 
Id               : k:n:5yRNq3bA
K8SUid           : d286c342-b02d-4f90-b69d-2362e5c722b3
LabelsList       : {, , , …}
Name             : znk8s
WorkloadsList    : {znk8s-discovery, znk8s-visibility}
```

This cmdlet lists the namespaces for a K8s Cluster Label.
