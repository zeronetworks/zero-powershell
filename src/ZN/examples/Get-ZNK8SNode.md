### Example 1: List K8s nodes
```powershell
(Get-ZNK8SNode).Items
```

```output
Id           K8SUid                               LabelsList Name
--           ------                               ---------- ----
k:d:xxRJPf3e a3a35f2f-c0ba-4a3e-b668-e68d88abb3b5 {, , , …}  rke-worker.posh.local
k:d:24A6lS06 2248a7e1-741b-441b-9b40-12b11ae0b8c8 {, , , …}  okd-sno.posh.local
k:d:lnflUew2 e6606952-b1c2-48f2-954a-843ddfc5b6ee {, , , …}  openshift-sno.posh.local
k:d:djQViO2Z 888487ac-fe0a-4db0-b2d6-f14615e88fd0 {, , , …}  rke-master.posh.local
```

This cmdlet lists the K8s nodes.
