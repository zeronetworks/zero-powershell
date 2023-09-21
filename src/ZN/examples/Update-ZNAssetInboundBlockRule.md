### Example 1: Update a rule for an asset
```powershell
$asset = Search-ZNAsset -fqdn wc01.posh.local
$rule = Get-ZNAssetInboundBlockRule -Asset $asset | where {$_.Description -eq "Test Rule"}
$rule.RemoteEntityIdsList += (Search-ZNAsset -Fqdn cs01.posh.local)
Update-ZNAssetInboundBlockRule -AssetId $asset -RuleId $rule.id -RemoteEntityIdsList $rule.RemoteEntityIdsList

ApprovedById               : 
ApprovedByName             : 
CreatedByEnforcementSource : 4
CreatedById                : u:a:w27loY5p
CreatedByName              : nicholas
CreatedByUserRole          : 1
ItemAction                 : 2
ItemActivitiesCount        : 
ItemApprovedAt             : 
ItemCreatedAt              : 1695052892040
ItemDescription            : Test Rule
ItemDirection              : 1
ItemExcludedEntityInfos    : 
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : 2d21025a-0eb6-45c1-85d3-825001b03b5b
ItemLocalEntityId          : a:a:OtfLGUBq
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {a:l:aayoPnNJ, a:l:mnVw2OZs}
ItemRemoteEntityInfos      : 
ItemRuleclass              : 
ItemState                  : 1
ItemUpdatedAt              : 1695052904111
LocalEntityInfoId          : 
LocalEntityInfoName        : 
UpdatedById                : m:13c49a4eb4fa90bbb948b6c8de5175ad2d36cfbc
UpdatedByName              : ModuleTesting
```

This cmdlet updates a rule for an asset.
