### Example 1: Create an outbound block rule for a specific asset
```powershell
$portsList = New-ZNPortsList -Protocol Any
$source = (Get-ZNAssetsOutboundAllowRulesSourceCandidate -AssetId a:a:OtfLGUBq -search "WC01").Items
$destination = Invoke-ZNEncodeEntityIp -IP 1.2.3.4 #MalicousIP
New-ZNAssetsOutboundBlockRule -AssetId a:a:OtfLGUBq -LocalEntityId $source.Id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($destination) -State 1
```

```output
CreatedByEnforcementSource : 6
CreatedById                : m:13c49a4eb4fa90bbb948b6c8de5175ad2d36cfbc
CreatedByName              : ModuleTesting
CreatedByUserRole          : 4
ItemAction                 : 2
ItemCreatedAt              : 1683916718281
ItemDescription            : 
ItemDirection              : 2
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : ed66d561-7609-40b2-b42b-3f9973536bc3
ItemLocalEntityId          : a:a:OtfLGUBq
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {b:120102030420}
ItemRemoteEntityInfos      : 
ItemState                  : 1
ItemUpdatedAt              : 
LocalEntityInfoId          : 
LocalEntityInfoName        : 
UpdatedById                : 
UpdatedByName              : 
```

This cmdlet creates an outbound block rule for the environment.
