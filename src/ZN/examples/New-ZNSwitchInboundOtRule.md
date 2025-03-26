### Example 1: Create inbound OT rule
```powershell
$protocolsList = New-ZNProtocolsList -Protocol tcp -LocalPorts 456
$source = (Get-ZNInboundOtRulesSourceCandidate -Search "any asset").Items[0]
$destination = (Get-ZNInboundOtRulesDestinationCandidate -Search "otv2").items
New-ZNSwitchInboundOtRule -SwitchId w:c:IBlczUkw -Action 1 -Direction 2 -localEntityId $destination.Id -RemoteEntitiesIdList @($source.id) -protocolsList $protocolsList -state 1 -LocalProcessesList @("*") -ExcludedLocalIdsList @() -ShouldBuildMirrorRules
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

This cmdlet creates an inbound OT rule.