### Example 1: List inbound OT rules
```powershell
(Get-ZNInboundOtRule).items
```

```output
Action                     : 1
ActivitiesCount            : 0
ApprovedAt                 : 
ApprovedById               : 
ApprovedByName             : 
CreatedAt                  : 1738025801723
CreatedByEmail             : 
CreatedByEnforcementSource : 4
CreatedById                : 11778dee-127b-4677-bbba-734040606532
CreatedByName              : Nicholas DiCola
CreatedByUserRole          : 1
Description                : 
Direction                  : 1
ExcludedEntityInfos        : 
ExcludedLocalIdsList       : {}
ExpiresAt                  : 
IPSecOpt                   : 
Id                         : R:s:caYmXNlz
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

This cmdlet lists inbound OT rules.

### Example 2: Get a inbound OT rule
```powershell
Get-ZNInboundOtRule -RuleId R:s:caYmXNlz
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
ItemCreatedAt              : 1738025801723
ItemDescription            : 
ItemDirection              : 1
ItemExcludedEntityInfos    : 
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 
ItemIPSecOpt               : 
ItemId                     : R:s:caYmXNlz
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

The cmdlet gets a inbound OT rule.
