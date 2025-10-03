### Example 1: List K8s Cluster Label workloads
```powershell
$k8sCluster = (Get-ZNK8SCluster).Items[0]
(Get-ZNK8SClusterLabelWorkload -K8SClusterId $k8sCluster.id -label app:znk8s-discovery).Items 
```

```output
AnnotationsList  : {znk8s, znk8s-cloud-connector}
ApplicationsList : {znk8s-discovery}
ClusterId        : k:c:osyL1WCW
ClusterName      : openshift
Id               : k:w:hxVSA7oa
K8SUid           : a62f399c-91f2-4f6d-8612-dabbba6601f6
LabelsList       : ZeroNetworks.PowerShell.Cmdlets.Api.Models.Any
Name             : znk8s-discovery
NamespaceId      : k:n:5yRNq3bA
NamespaceName    : znk8s
PodsCount        : 1
Type             : 7
```

This cmdlet lists the workloads for a K8s Cluster Label.
