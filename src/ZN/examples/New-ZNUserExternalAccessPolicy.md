### Example 1: Create external access policy
```powershell
$srcUser = Get-ZNExternalAccessPolicySourceUserCandidate -Search "Any user"
$portsList = New-ZNPortsList -Protocol TCP -Ports 12
$dstAsset = (Search-ZNAsset -Fqdn ls01.posh.local).AssetId
New-ZNUserExternalAccessPolicy -UserId $srcUser.Id -DstAssetId $dstAsset -DstPortsList $portsList -DstProcessNamesList @("*") -Name "ExternalTest" -RuleDuration 4 -SrcUserIdsList @($srcUser.Id) -State 1 -Url "https://external.posh.local"
```

```output
CreatedByEmail             : 
CreatedByEnforcementSource : 6
CreatedById                : m:ea53c6e1d0072c5974ceec597b64989274b7ba5f
CreatedByName              : powershell
CreatedByUserRole          : 4
ItemCreatedAt              : 1728096004176
ItemDescription            : 
ItemDstAssetId             : a:l:wEGYa0Cp
ItemDstAssetInfo           : ZeroNetworks.PowerShell.Cmdlets.Api.Models.Asset
ItemDstPortsList           : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemDstProcessNamesList    : {*}
ItemId                     : p:e:ROCMR59S
ItemName                   : ExternalTest
ItemRuleDuration           : 4
ItemSrcUserIdsList         : {b:111001}
ItemSrcUserInfos           : {Any user}
ItemState                  : 1
ItemUpdatedAt              : 1728096004176
ItemUrl                    : https://external.posh.local
UpdatedById                : 
UpdatedByName              :
```

This cmdlet creates an external access policy.
