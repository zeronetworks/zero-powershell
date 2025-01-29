### Example 1: List K8s cluster namespaces
```powershell
(Get-ZNK8SClusterNamespace -ClusterId k:c:FYe7yLUJ).Items
```

```output
ClusterId     : k:c:FYe7yLUJ
Id            : k:n:4CvhlfjA
K8SUid        : 1f5b6be8-ea56-43a1-a7d8-73b14b4162b5
LabelsList    : {assisted-installer, privileged, privileged, privileged…}
Name          : assisted-installer
WorkloadsList : {assisted-installer-controller}

ClusterId     : k:c:FYe7yLUJ
Id            : k:n:BCTbp4uf
K8SUid        : bc60f776-f251-4cce-94dc-894f875837b5
LabelsList    : {default, privileged, privileged, privileged}
Name          : default
WorkloadsList : {}
```

This cmdlet lists the cluster namespaces.
