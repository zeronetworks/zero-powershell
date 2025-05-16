### Example 1: Create inbound OT rule
```powershell
$asset = $asset = (Search-ZNAsset -Fqdn dc01.posh.local).AssetId
$protocolsList = New-ZNProtocolsList -Protocol tcp -LocalPorts 123
$destination = (Get-ZNOutboundOtRulesDestinationCandidate -Search "otv2").items
New-ZNAssetInboundOtRule -AssetId $asset -Action 1 -Direction 1 -localEntityId $destination.Id -RemoteEntitiesIdList @($asset) -protocolsList $protocolsList -state 1 -LocalProcessesList @("*") -ExcludedLocalIdsList @() -ShouldBuildMirrorRules
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
ItemCreatedAt                  : 1745495917671
ItemDescription                : 
ItemDirection                  : 1
ItemExcludedAssetInfos         : 
ItemExcludedLocalIdsList       : {}
ItemExpiresAt                  : 
ItemId                         : R:s:MTzR01fZ
ItemLocalEntityId              : g:s:14da83cd
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
ItemUpdatedAt                  : 
UpdatedById                    : 
UpdatedByName                  : 
```

This cmdlet creates an inbound OT rule.