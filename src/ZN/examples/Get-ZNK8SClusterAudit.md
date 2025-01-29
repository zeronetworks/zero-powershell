### Example 1: List K8s clusters audits
```powershell
(Get-ZNK8SClusterAudit -ClusterId k:c:FYe7yLUJ).Items
```

```output
AuditType               : 252
DestinationEntitiesList : {Openshift}
Details                 : {"cluster":{"name":"Openshift","k8sUid":"","clusterType":0,"clusterVersion":"","cniType":0,"cniVersion":
                          "","ip":""}}
EnforcementSource       : 4
IsoTimestamp            : 2025-01-27T01:27:21.185Z
ParentObjectId          : 
PerformedById           : 11778dee-127b-4677-bbba-734040606532
PerformedByName         : Nicholas DiCola
ReportedObjectId        : k:c:FYe7yLUJ
Timestamp               : 1737941241185
UserRole                : 1
```

This cmdlet lists K8s (kubernetes) clusters audits.
