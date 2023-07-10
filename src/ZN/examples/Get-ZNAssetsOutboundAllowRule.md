### Example 1: List outbound allow rules for a specific asset
```powershell
Get-ZNAssetsOutboundAllowRule -AssetId a:a:8ErCHXe8
```

```output
CreatedAt     RemoteEntityInfos LocalEntityInfoName Ruleclass ActivitiesCount Id                                   CreatedByEnforcementSource State Description
---------     ----------------- ------------------- --------- --------------- --                                   -------------------------- ----- -----------
1684251252281 {Linux1}          DC01                          0               b73fbf05-f2c5-494a-9184-bffb16d8bbaf 4                          1   
```

This cmdlet gets outbound allow rules for a specific asset.

### Example 2: Get a specific outbound allow rule for a specific asset
```powershell
Get-ZNAssetsOutboundAllowRule -AssetId a:a:8ErCHXe8 -RuleId b73fbf05-f2c5-494a-9184-bffb16d8bbaf
```

```output
ApprovedById               : 
ApprovedByName             : 
CreatedByEnforcementSource : 4
CreatedById                : 39cc28f6-7bba-4310-95e6-a7e7189a3ed5
CreatedByName              : Nicholas DiCola
CreatedByUserRole          : 1
ItemAction                 : 1
ItemActivitiesCount        : 0
ItemApprovedAt             : 
ItemCreatedAt              : 1684251252281
ItemDescription            : 
ItemDirection              : 2
ItemExcludedEntityInfos    : {}
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : b73fbf05-f2c5-494a-9184-bffb16d8bbaf
ItemLocalEntityId          : a:a:8ErCHXe8
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {a:l:goXZ3fpT}
ItemRemoteEntityInfos      : {Linux1}
ItemRuleclass              : 
ItemState                  : 1
ItemUpdatedAt              : 
LocalEntityInfoId          : a:a:8ErCHXe8
LocalEntityInfoName        : DC01
UpdatedById                : 
UpdatedByName              : 
```

Get a specific outbound allow rule for a specific asset.

