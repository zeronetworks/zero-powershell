### Example 1: List inbound block rules for a specific asset
```powershell
Get-ZNAssetsInboundBlockRule -AssetId a:a:8ErCHXe8
```

```output
CreatedAt     RemoteEntityInfos LocalEntityInfoName Ruleclass ActivitiesCount Id                                   CreatedByEnforcementSource State Description
---------     ----------------- ------------------- --------- --------------- --                                   -------------------------- ----- -----------
1684251102799 {Linux0}          DC01                          0               115eb380-9d5a-452d-be15-8a21c3418c34 4                          1
```

This cmdlet gets inbound block rules for a specific asset.

### Example 2: Get a specific inbound block rule for a specific asset
```powershell
Get-ZNAssetsInboundBlockRule -AssetId a:a:8ErCHXe8 -RuleId 115eb380-9d5a-452d-be15-8a21c3418c34
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
ItemCreatedAt              : 1684251102799
ItemDescription            : 
ItemDirection              : 1
ItemExcludedEntityInfos    : {}
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : 115eb380-9d5a-452d-be15-8a21c3418c34
ItemLocalEntityId          : a:a:8ErCHXe8
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {a:l:hC8rOTo0}
ItemRemoteEntityInfos      : {Linux0}
ItemRuleclass              : 
ItemState                  : 1
ItemUpdatedAt              : 
LocalEntityInfoId          : a:a:8ErCHXe8
LocalEntityInfoName        : DC01
UpdatedById                : 
UpdatedByName              : 
```

Get a specific inbound block rule for a specific asset.

