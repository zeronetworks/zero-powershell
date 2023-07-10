### Example 1: Create an inbound block rule for a specific asset
```powershell
$portsList = New-ZNPortsList -Protocol Any
$source = (Get-ZNAssetsInboundBlockRulesSourceCandidate -AssetId (Search-ZNAsset -fqdn WC01.posh.local) -Search "DC01").Items
$destination = (Get-ZNAssetsInboundBlockRulesDestinationCandidate -AssetId (Search-ZNAsset -fqdn WC01.posh.local) -search WC01).Items
New-ZNAssetsInboundBlockRule -AssetId (Search-ZNAsset -fqdn WC01.posh.local) -LocalEntityId $destination.Id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source.id) -State 1
```

```output
CreatedByEnforcementSource : 6
CreatedById                : m:13c49a4eb4fa90bbb948b6c8de5175ad2d36cfbc
CreatedByName              : ModuleTesting
CreatedByUserRole          : 4
ItemAction                 : 2
ItemCreatedAt              : 1683747575711
ItemDescription            : 
ItemDirection              : 1
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : 6b8798e8-a216-4802-99dd-ce7fe572e669
ItemLocalEntityId          : a:a:OtfLGUBq
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {a:a:8ErCHXe8}
ItemRemoteEntityInfos      : 
ItemState                  : 1
ItemUpdatedAt              : 
LocalEntityInfoId          : 
LocalEntityInfoName        : 
UpdatedById                : 
UpdatedByName              : 
```

This cmdlet creates an inbound block rule for the environment.
