### Example 1: Create outbound OT rule
```powershell
$protocolsList = New-ZNProtocolsList -Protocol tcp -LocalPorts 456
$source = (Get-ZNOutboundOtRulesSourceCandidate -Search "otv2").Items
$destination = (Get-ZNOutboundOtRulesDestinationCandidate -Search "any asset").items[0]
New-ZNSwitchOutboundOtRule -SwitchId w:c:IBlczUkw -Action 1 -Direction 2 -localEntityId $source.Id -RemoteEntitiesIdList @($destination.id) -protocolsList $protocolsList -state 1 -LocalProcessesList @("*") -ExcludedLocalIdsList @() -ShouldBuildMirrorRules
```

```output
pprovedById               : 
ApprovedByName             : 
CreatedByEmail             : 
CreatedByEnforcementSource : 6
CreatedById                : m:3929d40ebf7ecfe8dbce815b1c97ea93c2b2aa59
CreatedByName              : poshtesting
CreatedByUserRole          : 4
ItemAction                 : 1
ItemActivitiesCount        : 
ItemApprovedAt             : 
ItemCreatedAt              : 1738115160835
ItemDescription            : 
ItemDirection              : 2
ItemExcludedEntityInfos    : 
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 
ItemIPSecOpt               : 
ItemId                     : R:s:lOQBAn09
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