### Example 1: List Outbound AE Exclusions
```powershell
(Get-ZNAeExclusionsOutbound).Items
```

```output
Action                     : 2
ActivitiesCount            : 0
ApprovedAt                 : 
ApprovedById               : 
ApprovedByName             : 
CreatedAt                  : 1708466176008
CreatedByEmail             : 
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
DeletedAt                  : 1726517957934
DeltedById                 : 
DeltedByName               : 
Description                : 
Direction                  : 2
ExcludedEntityInfos        : {}
ExcludedLocalIdsList       : {}
ExpiresAt                  : 
IPSecOpt                   : 1
Id                         : a9c77d74-68f5-4205-9219-1e012d317902
LocalEntityId              : g:t:01669ce2
LocalEntityInfo            : ZeroNetworks.PowerShell.Cmdlets.Api.Models.Asset
LocalEntitySuccessor       : {dc01}
LocalProcessesList         : {*}
ParentId                   : 
ParentType                 : 0
PortsList                  : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
RemoteEntityIdsList        : {b:120101010120}
RemoteEntityInfos          : {1.1.1.1}
Ruleclass                  : 
SrcUserInfos               : {}
SrcUsersList               : {}
State                      : 3
UpdatedAt                  : 1726517957934
UpdatedById                : 
UpdatedByName              : 
```

This cmdlet lists outbound AE Exclusions.
