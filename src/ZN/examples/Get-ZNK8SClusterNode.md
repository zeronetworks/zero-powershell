### Example 1: List K8s cluster nodes
```powershell
(Get-ZNK8SClusterNode -ClusterId k:c:FYe7yLUJ).Items
```

```output
Id           K8SUid                               LabelsList          Name
--           ------                               ----------          ----
k:d:S5T28roD 5f00579d-7755-4019-9171-9b82c826da7b {amd64, rhcos, , …} bc-24-11-c6-be-5b
```

This cmdlet lists nodes in a K8s cluster.