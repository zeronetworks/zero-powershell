### Example 1: List namespace workloads
```powershell
(Get-ZNK8SNamespaceWorkload -NamespaceId k:n:Drq2fo6q).Items
```

```output
ClusterId   : k:c:FYe7yLUJ
ClusterName : Openshift
Id          : k:w:3YBsQS76
K8SUid      : d3ea47fa-b434-41dc-a732-ee2792bc77dc
LabelsList  : ZeroNetworks.PowerShell.Cmdlets.Api.Models.Any
Name        : znk8s-cloud-connector
PodsCount   : 1
```

This cmdlet lists workloads in a K8s namespace.