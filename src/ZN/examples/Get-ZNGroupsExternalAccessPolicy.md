### Example 1: List external access policies for a group
```powershell
(Get-ZNGroupsExternalAccessPolicy -Groupid g:t:5V669ce2 -GroupType tag).Items
```

```output
CreatedAt                  : 1728091784452
CreatedByEmail             : 
CreatedByEnforcementSource : 4
CreatedById                : u:a:JnQxZS6j
CreatedByName              : nicholas-ad
CreatedByUserRole          : 1
Description                : 
DstAssetId                 : g:t:5V669ce2
DstAssetInfo               : ZeroNetworks.PowerShell.Cmdlets.Api.Models.Asset
DstPortsList               : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
DstProcessNamesList        : {*}
Id                         : p:e:EhAz2WVR
Name                       : External Servers
RuleDuration               : 8
SrcUserIdsList             : {b:111001}
SrcUserInfos               : {Any user}
State                      : 1
UpdatedAt                  : 1728091784452
UpdatedById                : 
UpdatedByName              : 
Url                        : https://external.posh.local
```

This cmdlet lists external access policies for a group.

### Example 2: Get an external access policy for a group
```powershell
Get-ZNGroupsExternalAccessPolicy -Groupid g:t:5V669ce2 -GroupType tag -PolicyId p:e:EhAz2WVR
```

```output
CreatedByEmail             : 
CreatedByEnforcementSource : 4
CreatedById                : u:a:JnQxZS6j
CreatedByName              : nicholas-ad
CreatedByUserRole          : 1
ItemCreatedAt              : 1728091784452
ItemDescription            : 
ItemDstAssetId             : g:t:5V669ce2
ItemDstAssetInfo           : ZeroNetworks.PowerShell.Cmdlets.Api.Models.Asset
ItemDstPortsList           : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemDstProcessNamesList    : {*}
ItemId                     : p:e:EhAz2WVR
ItemName                   : External Servers
ItemRuleDuration           : 8
ItemSrcUserIdsList         : {b:111001}
ItemSrcUserInfos           : {Any user}
ItemState                  : 1
ItemUpdatedAt              : 1728091784452
ItemUrl                    : https://external.posh.local
UpdatedById                : 
UpdatedByName              : 
```

This cmdlet gets an external access policy for a group.
