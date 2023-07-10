### Example 1: List outbound block rules for a specific asset
```powershell
Get-ZNAssetsOutboundBlockRule -AssetId a:a:8ErCHXe8
```

```output
CreatedAt     RemoteEntityInfos LocalEntityInfoName Ruleclass ActivitiesCount Id                                   CreatedByEnforcementSource State Description
---------     ----------------- ------------------- --------- --------------- --                                   -------------------------- ----- -----------
1684251373972 {1.1.1.1}         DC01                          0               d72ee883-7460-4e86-82bf-6230b58f41d8 4                          1  
```

This cmdlet gets outbound block rules for a specific asset.

### Example 2: Get a specific outbound block rule for a specific asset
```powershell
Get-ZNAssetsOutboundBlockRule -AssetId a:a:8ErCHXe8 -RuleId d72ee883-7460-4e86-82bf-6230b58f41d8
```

```output
ApprovedById               : 
ApprovedByName             : 
CreatedByEnforcementSource : 4
CreatedById                : 39cc28f6-7bba-4310-95e6-a7e7189a3ed5
CreatedByName              : Nicholas DiCola
CreatedByUserRole          : 1
ItemAction                 : 2
ItemActivitiesCount        : 0
ItemApprovedAt             : 
ItemCreatedAt              : 1684251373972
ItemDescription            : 
ItemDirection              : 2
ItemExcludedEntityInfos    : {}
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : d72ee883-7460-4e86-82bf-6230b58f41d8
ItemLocalEntityId          : a:a:8ErCHXe8
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {b:120101010120}
ItemRemoteEntityInfos      : {1.1.1.1}
ItemRuleclass              : 
ItemState                  : 1
ItemUpdatedAt              : 
LocalEntityInfoId          : a:a:8ErCHXe8
LocalEntityInfoName        : DC01
UpdatedById                : 
UpdatedByName              : 
```

Get a specific outbound block rule for a specific asset.

