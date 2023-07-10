### Example 1: Create an outbound allow rule for a specific asset
```powershell
$portsList = New-ZNPortsList -Protocol TCP -Ports "53"
$source = (Get-ZNAssetsOutboundAllowRulesSourceCandidate -AssetId a:a:OtfLGUBq -search "WC01").Items
$destination = Invoke-ZNEncodeEntityIp -IP 8.8.8.8
New-ZNAssetsOutboundAllowRule -AssetId a:a:OtfLGUBq -LocalEntityId $source.id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($destination) -State 1
```

```output
CreatedByEnforcementSource : 6
CreatedById                : m:13c49a4eb4fa90bbb948b6c8de5175ad2d36cfbc
CreatedByName              : ModuleTesting
CreatedByUserRole          : 4
ItemAction                 : 1
ItemCreatedAt              : 1683916650076
ItemDescription            : 
ItemDirection              : 2
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : 6dee945b-9b38-439e-86fa-6d8df1c92de4
ItemLocalEntityId          : a:a:OtfLGUBq
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {b:120808080820}
ItemRemoteEntityInfos      : 
ItemState                  : 1
ItemUpdatedAt              : 
LocalEntityInfoId          : 
LocalEntityInfoName        : 
UpdatedById                : 
UpdatedByName              : 
```

This cmdlet creates an outbound allow rule for the environment.
