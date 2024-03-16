### Example 1: List rules for a specific asset
```powershell
$asset = Search-ZNAsset -Fqdn wc01.posh.local
Get-ZNAssetOutboundBlockRule -AssetId $assetGet-ZNAssetOutboundBlockRule -AssetId $asset -AddBuiltins
```

```output
CreatedAt     RemoteEntityInfos      LocalEntityInfoName  Ruleclass ActivitiesCount Id                                   CreatedByEnforcementSource State Description
---------     -----------------      -------------------  --------- --------------- --                                   -------------------------- ----- -----------
1694455805574 {1.2.3.4, badsite.com} All segmented assets           0               a33ae68e-0c9e-4d0c-a20c-433aa0563d36 4                          1
```

This cmdlet retruns a list of rules for a specific asset.

### Example 2: Get a specific rule for a specific asset
```powershell
$asset = Search-ZNAsset -Fqdn wc01.posh.local
Get-ZNAssetOutboundBlockRule -AssetId $asset -RuleId a33ae68e-0c9e-4d0c-a20c-433aa0563d36

ApprovedById               : 
ApprovedByName             : 
CreatedByEnforcementSource : 4
CreatedById                : u:a:w27loY5p
CreatedByName              : nicholas
CreatedByUserRole          : 1
ItemAction                 : 2
ItemActivitiesCount        : 0
ItemApprovedAt             : 
ItemCreatedAt              : 1694455805574
ItemDescription            : 
ItemDirection              : 2
ItemExcludedEntityInfos    : {}
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : a33ae68e-0c9e-4d0c-a20c-433aa0563d36
ItemLocalEntityId          : b:110002
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {b:120102030420, b:17badsite.com}
ItemRemoteEntityInfos      : {1.2.3.4, badsite.com}
ItemRuleclass              : 
ItemState                  : 1
ItemUpdatedAt              : 
LocalEntityInfoId          : b:110002
LocalEntityInfoName        : All segmented assets
UpdatedById                : 
UpdatedByName              : 
```

This cmdlet can get a specific rule for a specific asset.
