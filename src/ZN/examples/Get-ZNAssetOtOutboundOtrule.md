### Example 1: List OT Outbound Rules
```powershell
(Get-ZNAssetOtOutboundOtrule -AssetId a:t:IVCMcdit).Items
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
Description                : Automatically mirrored rule R:s:aW36ka59 to allow OT functionality
Direction                  : 2
ExcludedEntityInfos        : 
ExcludedLocalIdsList       : {}
ExpiresAt                  : 
IPSecOpt                   : 
Id                         : R:s:aW36ka59_b:990002
LocalEntityId              : b:990002
LocalEntityInfos           : {yuval nested out}
LocalEntitySuccessor       : 
LocalProcessesList         : {}
MirrorSwitchRuleId         : 
ParentId                   : 
ParentType                 : 
PortsList                  : 
RemoteEntityIdsList        : 
RemoteEntityInfos          : 
Ruleclass                  : 
ServicesList               : {}
SrcUserInfos               : {}
SrcUsersList               : {}
State                      : 1
UpdatedAt                  : 1737547846021
UpdatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
UpdatedByName              : Zero Networks
```

This cmdlet lists OT outbound rules for an OT Asset.
