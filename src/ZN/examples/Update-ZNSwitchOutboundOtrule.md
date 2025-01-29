### Example 1: Update outbound OT rule
```powershell
Update-ZNSwitchOutboundOtrule -SwitchId w:c:IBlczUkw -RuleId R:s:v707Sd2y -Description "New Description"
```

```output
ApprovedById                   : 
ApprovedByName                 : 
CreatedByEmail                 : 
CreatedByEnforcementSource     : 4
CreatedById                    : 11778dee-127b-4677-bbba-734040606532
CreatedByName                  : Nicholas DiCola
CreatedByUserRole              : 1
ItemAction                     : 1
ItemActivitiesCount            : 
ItemApprovedAt                 : 
ItemCreatedAt                  : 1738160409555
ItemDescription                : New Description
ItemDirection                  : 2
ItemExcludedAssetInfos         : 
ItemExcludedLocalIdsList       : {}
ItemExpiresAt                  : 
ItemId                         : R:s:v707Sd2y
ItemLocalEntityId              : a:t:ffPDi031
ItemLocalEntityInfos           : 
ItemLocalProcessesList         : {*}
ItemMirrorNetworkRuleId        : 
ItemMirrorSwitchRuleId         : 
ItemMultipleLocalEntityIdsList : {}
ItemPolicyParentRuleId         : 
ItemPolicyParentRuleType       : 0
ItemProtocolsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.SwitchProtocolsList}
ItemRemoteEntitiesIdList       : {b:110001}
ItemRemoteEntitiesInfos        : 
ItemServicesList               : {}
ItemShouldBuildMirrorRules     : True
ItemSrcUserInfos               : 
ItemSrcUsersList               : {}
ItemState                      : 1
ItemSwitchParentRuleId         : 
ItemSwitchParentRuleType       : 0
ItemUpdatedAt                  : 1738160508560
UpdatedById                    : m:3929d40ebf7ecfe8dbce815b1c97ea93c2b2aa59
UpdatedByName                  : poshtesting
```

This cmdlet updates an outbound OT rule.
