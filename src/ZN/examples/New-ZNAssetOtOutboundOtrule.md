### Example 1: Create outbound OT rule
```powershell
$protocolsList = New-ZNProtocolsList -Protocol tcp -LocalPorts 111
$source = (Get-ZNOutboundOtRulesSourceCandidate -Search "otV2").Items
$destination = (Get-ZNOutboundOtRulesDestinationCandidate -Search "Any Asset").items[0]
New-ZNAssetOtOutboundOtRule -AssetID $destination.id -Action 1 -Direction 1 -localEntityId $destination.Id -RemoteEntitiesIdList @($source.id) -protocolsList $protocolsList -state 1 -LocalProcessesList @("*") -ExcludedLocalIdsList @() -ShouldBuildMirrorRules
```

```output
ApprovedById               : 
ApprovedByName             : 
CreatedByEmail             : 
CreatedByEnforcementSource : 6
CreatedById                : m:3929d40ebf7ecfe8dbce815b1c97ea93c2b2aa59
CreatedByName              : poshtesting
CreatedByUserRole          : 4
ItemAction                 : 1
ItemActivitiesCount        : 
ItemApprovedAt             : 
ItemCreatedAt              : 1738109112372
ItemDescription            : 
ItemDirection              : 1
ItemExcludedEntityInfos    : 
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 
ItemIPSecOpt               : 
ItemId                     : R:s:zLK6DXE4
ItemLocalEntityId          : a:t:ffPDi031
ItemLocalEntityInfos       : 
ItemLocalEntitySuccessor   : 
ItemLocalProcessesList     : {*}
ItemMirrorSwitchRuleId     : 
ItemParentId               : 
ItemParentType             : 
ItemPortsList              : 
ItemRemoteEntityIdsList    : 
ItemRemoteEntityInfos      : 
ItemRuleclass              : 
ItemServicesList           : {}
ItemSrcUserInfos           : 
ItemSrcUsersList           : {}
ItemState                  : 1
ItemUpdatedAt              : 
UpdatedById                : 
UpdatedByName              : 
```

This cmdlet creates an outbound OT rule.