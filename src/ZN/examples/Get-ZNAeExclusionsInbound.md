### Example 1: List Inbound AE Exclusions
```powershell
(Get-ZNAeExclusionsInbound).Items
```

```output
Action                     : 1
ActivitiesCount            : 0
ApprovedAt                 : 
ApprovedById               : 
ApprovedByName             : 
CreatedAt                  : 1709213209409
CreatedByEmail             : 
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
DeletedAt                  : 1726517957934
DeltedById                 : 
DeltedByName               : 
Description                : 
Direction                  : 1
ExcludedEntityInfos        : {}
ExcludedLocalIdsList       : {}
ExpiresAt                  : 
IPSecOpt                   : 1
Id                         : 3a6f56a8-288f-4447-b8bc-9c63c4c8a58d
LocalEntityId              : g:t:01669ce2
LocalEntityInfo            : ZeroNetworks.PowerShell.Cmdlets.Api.Models.Asset
LocalEntitySuccessor       : {dc01}
LocalProcessesList         : {*}
ParentId                   : 
ParentType                 : 0
PortsList                  : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem, 
                             ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
RemoteEntityIdsList        : {b:110001}
RemoteEntityInfos          : {Any asset}
Ruleclass                  : 
SrcUserInfos               : {}
SrcUsersList               : {}
State                      : 3
UpdatedAt                  : 1726517957934
UpdatedById                : 
UpdatedByName              : 

Action                     : 1
ActivitiesCount            : 0
ApprovedAt                 : 
ApprovedById               : 
ApprovedByName             : 
CreatedAt                  : 1702254842410
CreatedByEmail             : 
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
DeletedAt                  : 1723024981263
DeltedById                 : 
DeltedByName               : 
Description                : Auto-generated rule for tagged traffic
Direction                  : 1
ExcludedEntityInfos        : {}
ExcludedLocalIdsList       : {}
ExpiresAt                  : 
IPSecOpt                   : 1
Id                         : 12726147-20f1-49d3-96b1-1090bbcbe15d
LocalEntityId              : g:t:01669ce2
LocalEntityInfo            : ZeroNetworks.PowerShell.Cmdlets.Api.Models.Asset
LocalEntitySuccessor       : {dc01}
LocalProcessesList         : {*}
ParentId                   : 
ParentType                 : 0
PortsList                  : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem, 
                             ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
RemoteEntityIdsList        : {b:110001}
RemoteEntityInfos          : {Any asset}
Ruleclass                  : 
SrcUserInfos               : {}
SrcUsersList               : {}
State                      : 3
UpdatedAt                  : 1723024981263
UpdatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
UpdatedByName              : Zero Networks
```

This cmdlet lists inbound AE Exclusions.
