### Example 1: Get outbound OT rules
```powershell
(Get-ZNSwitchOutboundOtRule -SwitchId w:c:IBlczUkw -AddBuiltins).Items
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

This cmdlet gets outbound OT rules for a switch.
