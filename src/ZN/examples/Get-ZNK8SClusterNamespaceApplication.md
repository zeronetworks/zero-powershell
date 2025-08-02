### Example 1: List K8s cluster namespace applications
```powershell
$cluster = (Get-ZNK8SCluster).Items[0]
$namepsace = (Get-ZNK8SClusterNamespace -K8SClusterId $cluster.id).Items[2]
(Get-ZNK8SClusterNamespaceApplication -K8SClusterId $cluster.id -K8sNamespaceId $namespace.id).Items
```

```output
ClusterId   : k:c:FYe7yLUJ
ClusterName : 
Name        : assisted-installer-controller
Namespaces  : {assisted-installer}
Workloads   : {assisted-installer-controller}
```

This cmdlet lists K8s cluster namespace applications.
