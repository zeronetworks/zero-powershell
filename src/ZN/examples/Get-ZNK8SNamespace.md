### Example 1: List cluster namespaces
```powershell
(Get-ZNK8SNamespace).Items
```

```output
ClusterId     : k:c:FYe7yLUJ
Id            : k:n:4CvhlfjA
K8SUid        : 1f5b6be8-ea56-43a1-a7d8-73b14b4162b5
LabelsList    : {false, assisted-installer, privileged, privileged…}
Name          : assisted-installer
WorkloadsList : {assisted-installer-controller}

ClusterId     : k:c:FYe7yLUJ
Id            : k:n:BCTbp4uf
K8SUid        : bc60f776-f251-4cce-94dc-894f875837b5
LabelsList    : {default, privileged, privileged, privileged}
Name          : default
WorkloadsList : {}
...
```

This cmdlet lists namespaces in a K8s cluster.

### Example 2: Get a cluster namespaces
```powershell
(Get-ZNK8SNamespace -NamespaceId k:n:Drq2fo6q).Items
```

```output
EntityClusterId     : k:c:FYe7yLUJ
EntityId            : k:n:Drq2fo6q
EntityK8SUid        : d67e5c0a-70f8-4a4d-bd25-a052346e526a
EntityLabelsList    : {latest, znk8s, znk8s, restricted…}
EntityName          : znk8s
EntityWorkloadsList : {znk8s-cloud-connector}```

This cmdlet gets a namespace in a K8s cluster.