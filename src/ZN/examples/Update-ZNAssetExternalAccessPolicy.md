### Example 1: Update External access policy
```powershell
$asset = 'a:l:2UxufVFE'
$policy = Get-ZNAssetExternalAccessPolicy -AssetId $asset -PolicyId 'p:e:diwDLSSB'
Update-ZNAssetExternalAccessPolicy -AssetId $asset -PolicyId 'p:e:diwDLSSB' -RuleDuration 8
```

```output
CreatedByEmail             : 
CreatedByEnforcementSource : 6
CreatedById                : m:b7a85d794b3bb820413309acefe94adcb8767c16
CreatedByName              : powershell
CreatedByUserRole          : 4
ItemCreatedAt              : 1730141436885
ItemDescription            : 
ItemDstAssetId             : a:l:2UxufVFE
ItemDstAssetInfo           : ZeroNetworks.PowerShell.Cmdlets.Api.Models.Asset
ItemDstPortsList           : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemDstProcessNamesList    : {*}
ItemId                     : p:e:diwDLSSB
ItemName                   : ExternalUpdateUserTest
ItemRuleDuration           : 8
ItemSrcUserIdsList         : {u:a:hOLnvx4y}
ItemSrcUserInfos           : {zero}
ItemState                  : 1
ItemUpdatedAt              : 1731448171022
ItemUrl                    : https://external.posh.local
UpdatedById                : m:b7a85d794b3bb820413309acefe94adcb8767c16
UpdatedByName              : powershell
```

This cmdlet updates an external access policy.
