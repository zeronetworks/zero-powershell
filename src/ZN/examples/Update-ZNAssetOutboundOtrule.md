### Example 1: Update outbound OT rule
```powershell
Update-ZNAssetOutboundOtrule -AssetId a:a:JF2xro6g -RuleId R:s:BGoWJ5OZ -Description "New Description"
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
ItemActivitiesCount            : 
ItemApprovedAt                 : 
ItemCreatedAt                  : 1744138288203
ItemDescription                : New Description
ItemDirection                  : 2
ItemExcludedAssetInfos         : 
ItemExcludedLocalIdsList       : {}
ItemExpiresAt                  : 
ItemId                         : R:s:BGoWJ5OZ
ItemLocalEntityId              : b:114002
ItemLocalEntityInfos           : 
ItemLocalProcessesList         : {*}
ItemMirrorNetworkRuleId        : 
ItemMirrorSwitchRuleId         : 
ItemMultipleLocalEntityIdsList : {}
ItemPolicyParentRuleId         : 
ItemPolicyParentRuleType       : 0
ItemProtocolsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.SwitchProtocolsList}
ItemRemoteEntitiesIdList       : {a:a:JF2xro6g}
ItemRemoteEntitiesInfos        : 
ItemServicesList               : {}
ItemShouldBuildMirrorRules     : True
ItemSrcUserInfos               : 
ItemSrcUsersList               : {}
ItemState                      : 1
ItemSwitchParentRuleId         : 
ItemSwitchParentRuleType       : 0
ItemUpdatedAt                  : 1745527002285
UpdatedById                    : m:3929d40ebf7ecfe8dbce815b1c97ea93c2b2aa59
UpdatedByName                  : poshtesting
```

This cmdlet updates an outbound OT rule.
