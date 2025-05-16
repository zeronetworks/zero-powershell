### Example 1: List OT/IoT Rules
```powershell
(Get-ZNAssetInboundOtRule -AssetId $asset).Items
```

```output
Action                     : 1
ActivitiesCount            : 0
ApprovedAt                 : 
ApprovedById               : 
ApprovedByName             : 
CreatedAt                  : 1744138270357
CreatedByEmail             : 
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
Description                : 
Direction                  : 1
ExcludedAssetInfos         : {}
ExcludedLocalIdsList       : {}
ExpiresAt                  : 
Id                         : R:s:lImIs4YH
LocalEntityId              : b:114002
LocalEntityInfos           : {Segmented OT/IoT devices}
LocalProcessesList         : {*}
MirrorNetworkRuleId        : 
MirrorSwitchRuleId         : 
MultipleLocalEntityIdsList : {}
PolicyParentRuleId         : 
PolicyParentRuleType       : 0
ProtocolsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.SwitchProtocolsList}
RemoteEntitiesIdList       : {a:a:JF2xro6g}
RemoteEntitiesInfos        : {DC01}
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

This cmdlet list rules.

### Example 2: Get an OT/IoT Rule
```powershell
Get-ZNAssetInboundOtRule -AssetId $asset -RuleId R:s:lImIs4YH
```

```output
ApprovedById                   : 
ApprovedByName                 : 
CreatedByEmail                 : 
CreatedByEnforcementSource     : 5
CreatedById                    : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName                  : Zero Networks
CreatedByUserRole              : 1
ItemAction                     : 1
ItemActivitiesCount            : 0
ItemApprovedAt                 : 
ItemCreatedAt                  : 1744138270357
ItemDescription                : 
ItemDirection                  : 1
ItemExcludedAssetInfos         : {}
ItemExcludedLocalIdsList       : {}
ItemExpiresAt                  : 
ItemId                         : R:s:lImIs4YH
ItemLocalEntityId              : b:114002
ItemLocalEntityInfos           : {Segmented OT/IoT devices}
ItemLocalProcessesList         : {*}
ItemMirrorNetworkRuleId        : 
ItemMirrorSwitchRuleId         : 
ItemMultipleLocalEntityIdsList : {}
ItemPolicyParentRuleId         : 
ItemPolicyParentRuleType       : 0
ItemProtocolsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.SwitchProtocolsList}
ItemRemoteEntitiesIdList       : {a:a:JF2xro6g}
ItemRemoteEntitiesInfos        : {DC01}
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

This cmdlet gets a rule.
