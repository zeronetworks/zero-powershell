### Example 1: Create an inbound allow rule for a specific asset
```powershell
$portsList = New-ZNPortsList -Protocol TCP -Ports "44,45"
$source = (Get-ZNAssetsInboundAllowRulesSourceCandidate -AssetId (Search-ZNAsset -fqdn WC01.posh.local) -search "any asset").Items
$destination = (Get-ZNAssetsInboundAllowRulesDestinationCandidate -AssetId (Search-ZNAsset -fqdn WC01.posh.local) -Search wc01).Items
New-ZNAssetsInboundAllowRule -AssetId (Search-ZNAsset -fqdn WC01.posh.local) -LocalEntityId $destination.Id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source.id) -State 1
```

```output
CreatedByEnforcementSource : 6
CreatedById                : m:13c49a4eb4fa90bbb948b6c8de5175ad2d36cfbc
CreatedByName              : ModuleTesting
CreatedByUserRole          : 4
ItemAction                 : 1
ItemCreatedAt              : 1683734392568
ItemDescription            : 
ItemDirection              : 1
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : 7c19ddf1-830d-415f-aa1e-ce6326f7e051
ItemLocalEntityId          : a:a:OtfLGUBq
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {b:110001}
ItemRemoteEntityInfos      : 
ItemState                  : 1
ItemUpdatedAt              : 
LocalEntityInfoId          : 
LocalEntityInfoName        : 
UpdatedById                : 
UpdatedByName              : 
```

This cmdlet creates an inbound allow rule for the environment via specific asset.
