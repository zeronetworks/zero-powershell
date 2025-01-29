### Example 1: Update an outbound AE Exclusion
```powershell
Update-ZNAeExclusionsOutbound -RuleId 77d134fd-479c-4312-ab3c-9d870172ebeb -Description "test"
```

```output
DeletedById                    : 
DeletedByName                  : 
ItemAction                     : 1
ItemActivitiesCount            : 
ItemApprovedAt                 : 
ItemApprovedById               : 
ItemApprovedByName             : 
ItemCreatedAt                  : 1738154331122
ItemCreatedByEmail             : 
ItemCreatedByEnforcementSource : 4
ItemCreatedById                : 11778dee-127b-4677-bbba-734040606532
ItemCreatedByName              : Nicholas DiCola
ItemCreatedByUserRole          : 1
ItemDeletedAt                  : 
ItemDescription                : test
ItemDirection                  : 2
ItemExcludedEntityInfos        : 
ItemExcludedLocalIdsList       : {}
ItemExpiresAt                  : 
ItemIPSecOpt                   : 1
ItemId                         : 77d134fd-479c-4312-ab3c-9d870172ebeb
ItemLocalEntityId              : b:110002
ItemLocalEntityInfos           : 
ItemLocalEntitySuccessor       : 
ItemLocalProcessesList         : {*}
ItemMirrorSwitchRuleId         : 
ItemParentId                   : 
ItemParentType                 : 0
ItemPortsList                  : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList        : {g:a:HBWuhIUi}
ItemRemoteEntityInfos          : 
ItemRuleclass                  : 
ItemServicesList               : {}
ItemSrcUserInfos               : 
ItemSrcUsersList               : {}
ItemState                      : 7
ItemUpdatedAt                  : 1738154354635
ItemUpdatedById                : m:3929d40ebf7ecfe8dbce815b1c97ea93c2b2aa59
ItemUpdatedByName              : poshtesting
```

This cmdlet updates an outbound AE exclusion.
