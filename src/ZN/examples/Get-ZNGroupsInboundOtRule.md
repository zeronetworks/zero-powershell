### Example 1: List inbound OT rules.
```powershell
$group = (Get-ZNGroup -Search "3D Printer").Items | where {$_.Name -eq "3D Printer"} 
(Get-ZNGroupsInboundOtRule -groupType ot -GroupId $group.id).Items
```

```output
Action                     : 1
ActivitiesCount            : 0
ApprovedAt                 : 
ApprovedById               : 
ApprovedByName             : 
CreatedAt                  : 1739751297465
CreatedByEmail             : 
CreatedByEnforcementSource : 4
CreatedById                : ab803afb-83bd-4bfe-9e0e-a5db211d134b
CreatedByName              : Nick Portal
CreatedByUserRole          : 1
Description                : 
Direction                  : 1
ExcludedAssetInfos         : {}
ExcludedLocalIdsList       : {}
ExpiresAt                  : 
Id                         : R:s:SrT6eGOp
LocalEntityId              : g:o:1L3bd888
LocalEntityInfos           : {3D Printer}
LocalProcessesList         : {*}
MirrorNetworkRuleId        : 
MirrorSwitchRuleId         : 
MultipleLocalEntityIdsList : {}
PolicyParentRuleId         : 
PolicyParentRuleType       : 0
ProtocolsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.SwitchProtocolsList}
RemoteEntitiesIdList       : {g:s:143bd888}
RemoteEntitiesInfos        : {Internal subnets}
ServicesList               : {}
ShouldBuildMirrorRules     : True
SrcUserInfos               : {}
SrcUsersList               : {}
State                      : 1
SwitchParentRuleId         : 
SwitchParentRuleType       : 0
UpdatedAt                  : 
UpdatedById                : 
UpdatedByName              : 
```

This cmdlet lists inbound OT rules.

### Example 2: Get an inbound OT rule.
```powershell
$group = (Get-ZNGroup -Search "3D Printer").Items | where {$_.Name -eq "3D Printer"} 
Get-ZNGroupsInboundOtRule -groupType ot -GroupId $group.id -RuleId R:s:SrT6eGOp
```

```output
ApprovedById                   : 
ApprovedByName                 : 
CreatedByEmail                 : 
CreatedByEnforcementSource     : 4
CreatedById                    : ab803afb-83bd-4bfe-9e0e-a5db211d134b
CreatedByName                  : Nick Portal
CreatedByUserRole              : 1
ItemAction                     : 1
ItemActivitiesCount            : 0
ItemApprovedAt                 : 
ItemCreatedAt                  : 1739751297465
ItemDescription                : 
ItemDirection                  : 1
ItemExcludedAssetInfos         : {}
ItemExcludedLocalIdsList       : {}
ItemExpiresAt                  : 
ItemId                         : R:s:SrT6eGOp
ItemLocalEntityId              : g:o:1L3bd888
ItemLocalEntityInfos           : {3D Printer}
ItemLocalProcessesList         : {*}
ItemMirrorNetworkRuleId        : 
ItemMirrorSwitchRuleId         : 
ItemMultipleLocalEntityIdsList : {}
ItemPolicyParentRuleId         : 
ItemPolicyParentRuleType       : 0
ItemProtocolsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.SwitchProtocolsList}
ItemRemoteEntitiesIdList       : {g:s:143bd888}
ItemRemoteEntitiesInfos        : {Internal subnets}
ItemServicesList               : {}
ItemShouldBuildMirrorRules     : True
ItemSrcUserInfos               : {}
ItemSrcUsersList               : {}
ItemState                      : 1
ItemSwitchParentRuleId         : 
ItemSwitchParentRuleType       : 0
ItemUpdatedAt                  : 
UpdatedById                    : 
UpdatedByName                  : 
```

This cmdlet gets an inbound OT rules.
