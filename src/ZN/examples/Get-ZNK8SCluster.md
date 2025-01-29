### Example 1: List K8s clusters
```powershell
(Get-ZNK8SCluster).Items
```

```output
AgentExternalIP   : 50.89.54.67
AgentVersion      : 1.0.0.0
ClusterType       : 2
CniType           : 2
CniVersion        : 4.17.12
ConnectedSince    : 1737941385944
ConnectionState   : 1
CreatedAt         : 1737941241180
CreatedById       : 11778dee-127b-4677-bbba-734040606532
CreatedByName     : Nicholas DiCola
Generation        : 738560025
Id                : k:c:FYe7yLUJ
K8SClusterVersion : 1.30
K8SUid            : e86eb57e-e632-4d0c-813a-9cf6c88cf5bc
LastConnected     : 1737941385944
LastDisconnected  : 
Name              : Openshift
UpdatedAt         : 1737941425498
UpdatedById       : 
UpdatedByName     : 
```

This cmdlet lists K8s (kubernetes) clusters.
