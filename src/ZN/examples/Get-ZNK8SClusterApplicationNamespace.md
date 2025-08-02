### Example 1: List K8s cluster application namespaces
```powershell
$cluster = (Get-ZNK8SCluster).Items[0]
$application = (Get-ZNK8SClusterApplication -K8SClusterId $cluster.id).Items[0] 
(Get-ZNK8SClusterApplicationNamespace -K8SClusterId $cluster.id -ApplicationName $application.Name).Items
```

```output
ApplicationsList : {assisted-installer-controller}
ClusterId        : k:c:FYe7yLUJ
ClusterName      : 
Id               : k:n:4CvhlfjA
K8SUid           : 1f5b6be8-ea56-43a1-a7d8-73b14b4162b5
LabelsList       : {false, assisted-installer, privileged, privileged…}
Name             : assisted-installer
WorkloadsList    : {assisted-installer-controller}
```

This cmdlet lists K8s cluster application namespaces.
