### Example 1: List cluster workloads
```powershell
(Get-ZNK8SClusterWorkload -ClusterId k:c:FYe7yLUJ).Items
```

```output
ClusterId   : k:c:FYe7yLUJ
ClusterName : Openshift
Id          : k:w:0bzG3di6
K8SUid      : 839c770e-3105-4e1a-943e-f0f52d2a3fe4
LabelsList  : ZeroNetworks.PowerShell.Cmdlets.Api.Models.Any
Name        : insights-operator
PodsCount   : 1
Type        : 5

ClusterId   : k:c:FYe7yLUJ
ClusterName : Openshift
Id          : k:w:WZj8gPKz
K8SUid      : 28619351-cc94-45d3-8944-37c282c481d4
LabelsList  : ZeroNetworks.PowerShell.Cmdlets.Api.Models.Any
Name        : kube-apiserver-operator
PodsCount   : 1
Type        : 5
...
```

This cmdlet lists workloads in a K8s cluster.