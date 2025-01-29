### Example 1: Update an inbound AE Exclusion
```powershell
Update-ZNAeExclusionsInbound -RuleId f8225668-cd62-4b25-9cb5-e52d88c26ccf -Description "test"
```

```output
DeletedById                    : 
DeletedByName                  : 
ItemAction                     : 1
ItemActivitiesCount            : 
ItemApprovedAt                 : 
ItemApprovedById               : 
ItemApprovedByName             : 
ItemCreatedAt                  : 1738117624052
ItemCreatedByEmail             : 
ItemCreatedByEnforcementSource : 4
ItemCreatedById                : 11778dee-127b-4677-bbba-734040606532
ItemCreatedByName              : Nicholas DiCola
ItemCreatedByUserRole          : 1
ItemDeletedAt                  : 
ItemDescription                : test
ItemDirection                  : 1
ItemExcludedEntityInfos        : 
ItemExcludedLocalIdsList       : {}
ItemExpiresAt                  : 
ItemIPSecOpt                   : 1
ItemId                         : f8225668-cd62-4b25-9cb5-e52d88c26ccf
ItemLocalEntityId              : g:a:5C0h1yd5
ItemLocalEntityInfos           : 
ItemLocalEntitySuccessor       : 
ItemLocalProcessesList         : {*}
ItemMirrorSwitchRuleId         : 
ItemParentId                   : 
ItemParentType                 : 0
ItemPortsList                  : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList        : {b:110001}
ItemRemoteEntityInfos          : 
ItemRuleclass                  : 
ItemServicesList               : {}
ItemSrcUserInfos               : 
ItemSrcUsersList               : {}
ItemState                      : 7
ItemUpdatedAt                  : 1738154234147
ItemUpdatedById                : m:3929d40ebf7ecfe8dbce815b1c97ea93c2b2aa59
ItemUpdatedByName              : poshtesting
```

This cmdlet updates an inbound AE exclusion.
