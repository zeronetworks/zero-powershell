### Example 1: Update outbound allow rule for an Asset
```powershell
$asset = Search-ZNAsset -fqdn linux0.posh.local
Update-ZNAssetsOutboundAllowRule -AssetId $asset -RuleId '62a5599c-dcaf-4e7f-9527-021fde3d29d3' -Description "New Description"
```

```output
ApprovedById               : 
ApprovedByName             : 
CreatedByEnforcementSource : 6
CreatedById                : m:13c49a4eb4fa90bbb948b6c8de5175ad2d36cfbc
CreatedByName              : ModuleTesting
CreatedByUserRole          : 4
ItemAction                 : 1
ItemActivitiesCount        : 
ItemApprovedAt             : 
ItemCreatedAt              : 1688744786218
ItemDescription            : New Description
ItemDirection              : 2
ItemExcludedEntityInfos    : 
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 1688748360000
ItemId                     : 62a5599c-dcaf-4e7f-9527-021fde3d29d3
ItemLocalEntityId          : a:l:hC8rOTo0
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {b:110001}
ItemRemoteEntityInfos      : 
ItemRuleclass              : 
ItemState                  : 1
ItemUpdatedAt              : 1688744828461
LocalEntityInfoId          : 
LocalEntityInfoName        : 
UpdatedById                : m:13c49a4eb4fa90bbb948b6c8de5175ad2d36cfbc
UpdatedByName              : ModuleTesting
```

This cmdlet updates an Outbound allow rule for an asset.
