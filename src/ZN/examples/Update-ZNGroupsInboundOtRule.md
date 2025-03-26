### Example 1: Update inbound OT rule
```powershell
$group = (Get-ZNGroup -Search "3D Printer").Items | where {$_.Name -eq "3D Printer"}
Update-ZNGroupsOtInboundOtrule -GroupId $groupId -groupType ot -RuleId R:s:E19JWHhf -Description "New Description"
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
ItemCreatedAt                  : 1738153663710
ItemDescription                : test
ItemDirection                  : 1
ItemExcludedAssetInfos         : 
ItemExcludedLocalIdsList       : {}
ItemExpiresAt                  : 
ItemId                         : R:s:E19JWHhf
ItemLocalEntityId              : a:t:ffPDi031
ItemLocalEntityInfos           : 
ItemLocalProcessesList         : {*}
ItemMirrorNetworkRuleId        : 9f57c2f8-96f6-45bb-999d-a832fed1f0e6
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
ItemUpdatedAt                  : 1738160263645
UpdatedById                    : m:3929d40ebf7ecfe8dbce815b1c97ea93c2b2aa59
UpdatedByName                  : poshtesting
```

This cmdlet updates an inbound OT rule.

