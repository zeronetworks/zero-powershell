### Example 1: Update a rule for an asset
```powershell
$asset = Search-ZNAsset -fqdn wc01.posh.local
$rule = Get-ZNAssetOutboundBlockRule -Asset $asset | where {$_.Description -eq "Test Rule"}
$rule.RemoteEntityIdsList += (Search-ZNAsset -Fqdn cs01.posh.local)
Update-ZNAssetOutboundBlockRule -AssetId $asset -RuleId $rule.id -RemoteEntityIdsList $rule.RemoteEntityIdsList

ApprovedById               : 
ApprovedByName             : 
CreatedByEnforcementSource : 4
CreatedById                : u:a:w27loY5p
CreatedByName              : nicholas
CreatedByUserRole          : 1
ItemAction                 : 2
ItemActivitiesCount        : 
ItemApprovedAt             : 
ItemCreatedAt              : 1695053032461
ItemDescription            : Test Rule
ItemDirection              : 2
ItemExcludedEntityInfos    : 
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : b7d1a1bf-8172-4878-a91f-52987c94c4cb
ItemLocalEntityId          : a:a:OtfLGUBq
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {a:l:aayoPnNJ, a:l:mnVw2OZs}
ItemRemoteEntityInfos      : 
ItemRuleclass              : 
ItemState                  : 1
ItemUpdatedAt              : 1695053039403
LocalEntityInfoId          : 
LocalEntityInfoName        : 
UpdatedById                : m:13c49a4eb4fa90bbb948b6c8de5175ad2d36cfbc
UpdatedByName              : ModuleTesting
```

This cmdlet updates a rule for an asset.
