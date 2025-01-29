### Example 1: List OT Inbound Rules
```powershell
(Get-ZNAssetOtInboundOtrule -AssetId a:t:IVCMcdit).Items
```

```output
Action                     : 2
ActivitiesCount            : 0
ApprovedAt                 : 
ApprovedById               : 
ApprovedByName             : 
CreatedAt                  : 1737481326108
CreatedByEmail             : 
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
Description                : 
Direction                  : 1
ExcludedEntityInfos        : 
ExcludedLocalIdsList       : {}
ExpiresAt                  : 
IPSecOpt                   : 
Id                         : R:s:aW36ka59
LocalEntityId              : a:t:cn2srMxi
LocalEntityInfos           : {toker-OTv2}
LocalEntitySuccessor       : 
LocalProcessesList         : {C:\nc64.exe}
MirrorSwitchRuleId         : R:s:aW36ka59_b:990002
ParentId                   : 
ParentType                 : 
PortsList                  : 
RemoteEntityIdsList        : 
RemoteEntityInfos          : 
Ruleclass                  : 
ServicesList               : {}
SrcUserInfos               : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.GroupsOrUsersList}
SrcUsersList               : {g:c:H42zmcnH}
State                      : 1
UpdatedAt                  : 1737547846013
UpdatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
UpdatedByName              : Zero Networks
```

This cmdlet lists OT inbound rules for an OT Asset.
