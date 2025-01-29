### Example 1: List outbound OT rules
```powershell
(Get-ZNOutboundOtRule).items
```

```output
Action                     : 1
ActivitiesCount            : 0
ApprovedAt                 : 
ApprovedById               : 
ApprovedByName             : 
CreatedAt                  : 1738025816267
CreatedByEmail             : 
CreatedByEnforcementSource : 4
CreatedById                : 11778dee-127b-4677-bbba-734040606532
CreatedByName              : Nicholas DiCola
CreatedByUserRole          : 1
Description                : 
Direction                  : 2
ExcludedEntityInfos        : 
ExcludedLocalIdsList       : {}
ExpiresAt                  : 
IPSecOpt                   : 
Id                         : R:s:RabidKWs
LocalEntityId              : b:114002
LocalEntityInfos           : {Segmented OT/IoT devices}
LocalEntitySuccessor       : 
LocalProcessesList         : {*}
MirrorSwitchRuleId         : 
ParentId                   : 
ParentType                 : 
PortsList                  : 
RemoteEntityIdsList        : 
RemoteEntityInfos          : 
Ruleclass                  : 
ServicesList               : {}
SrcUserInfos               : 
SrcUsersList               : {}
State                      : 1
UpdatedAt                  : 
UpdatedById                : 
UpdatedByName              : 
```

This cmdlet lists outbound OT rules.

### Example 2: Get a outbound OT rule
```powershell
Get-ZNOutboundOtRule -RuleId R:s:RabidKWs
```

```output
ApprovedById               : 
ApprovedByName             : 
CreatedByEmail             : 
CreatedByEnforcementSource : 4
CreatedById                : 11778dee-127b-4677-bbba-734040606532
CreatedByName              : Nicholas DiCola
CreatedByUserRole          : 1
ItemAction                 : 1
ItemActivitiesCount        : 0
ItemApprovedAt             : 
ItemCreatedAt              : 1738025816267
ItemDescription            : 
ItemDirection              : 2
ItemExcludedEntityInfos    : 
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 
ItemIPSecOpt               : 
ItemId                     : R:s:RabidKWs
ItemLocalEntityId          : b:114002
ItemLocalEntityInfos       : {Segmented OT/IoT devices}
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

The cmdlet gets a outbound OT rule.
