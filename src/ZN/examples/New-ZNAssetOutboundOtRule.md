### Example 1: Create outbound OT rule
```powershell
$asset = (Search-ZNAsset -Fqdn otv2.posh.local).AssetId
$protocolsList = New-ZNProtocolsList -Protocol tcp -LocalPorts 111
$destination = (Get-ZNOutboundOtRulesDestinationCandidate -Search "any asset").items[0]
New-ZNAssetOutboundOtRule -AssetId $asset -Action 1 -Direction 2 -localEntityId $asset -RemoteEntitiesIdList @($destination.id) -protocolsList $protocolsList -state 1 -LocalProcessesList @("*") -ExcludedLocalIdsList @() -ShouldBuildMirrorRules
```

```output
ApprovedById                   : 
ApprovedByName                 : 
CreatedByEmail                 : 
CreatedByEnforcementSource     : 6
CreatedById                    : m:3929d40ebf7ecfe8dbce815b1c97ea93c2b2aa59
CreatedByName                  : poshtesting
CreatedByUserRole              : 4
ItemAction                     : 1
ItemActivitiesCount            : 
ItemApprovedAt                 : 
ItemCreatedAt                  : 1745500179797
ItemDescription                : 
ItemDirection                  : 2
ItemExcludedAssetInfos         : 
ItemExcludedLocalIdsList       : {}
ItemExpiresAt                  : 
ItemId                         : R:s:FCjfp45I
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
ItemUpdatedAt                  : 
UpdatedById                    : 
UpdatedByName                  : 
```

This cmdlet creates an outbound OT rule.