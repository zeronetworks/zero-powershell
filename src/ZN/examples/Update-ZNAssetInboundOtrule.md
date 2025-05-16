### Example 1: Update inbound OT rule
```powershell
Update-ZNAssetInboundOtrule -AssetId a:a:JF2xro6g -RuleId R:s:lImIs4YH -Description "New Description"
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
ItemCreatedAt                  : 1744138270357
ItemDescription                : New Description
ItemDirection                  : 1
ItemExcludedAssetInfos         : 
ItemExcludedLocalIdsList       : {g:o:1Lda83cd}
ItemExpiresAt                  : 
ItemId                         : R:s:lImIs4YH
ItemLocalEntityId              : b:114002
ItemLocalEntityInfos           : 
ItemLocalProcessesList         : {}
ItemMirrorNetworkRuleId        : 
ItemMirrorSwitchRuleId         : 
ItemMultipleLocalEntityIdsList : {}
ItemPolicyParentRuleId         : 
ItemPolicyParentRuleType       : 0
ItemProtocolsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.SwitchProtocolsList}
ItemRemoteEntitiesIdList       : {a:a:JF2xro6g}
ItemRemoteEntitiesInfos        : 
ItemServicesList               : {}
ItemShouldBuildMirrorRules     : False
ItemSrcUserInfos               : 
ItemSrcUsersList               : {}
ItemState                      : 1
ItemSwitchParentRuleId         : 
ItemSwitchParentRuleType       : 0
ItemUpdatedAt                  : 1745526916077
UpdatedById                    : m:3929d40ebf7ecfe8dbce815b1c97ea93c2b2aa59
UpdatedByName                  : poshtesting
```

This cmdlet updates an inbound OT rule.
