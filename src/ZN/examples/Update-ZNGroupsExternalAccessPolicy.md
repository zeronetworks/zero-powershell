### Example 1: Update External access policy
```powershell
$groupId = 'g:t:5V741a05'
$policy = Get-ZNGroupsExternalAccessPolicy -GroupId $groupId -GroupType tag -PolicyId 'p:e:KFcN9TaS'
Update-ZNGroupsExternalAccessPolicy -GroupId $groupId -GroupType tag -PolicyId 'p:e:KFcN9TaS' -RuleDuration 8
```

```output
CreatedByEmail             : 
CreatedByEnforcementSource : 6
CreatedById                : m:b7a85d794b3bb820413309acefe94adcb8767c16
CreatedByName              : powershell
CreatedByUserRole          : 4
ItemCreatedAt              : 1730141382528
ItemDescription            : 
ItemDstAssetId             : g:t:5V741a05
ItemDstAssetInfo           : ZeroNetworks.PowerShell.Cmdlets.Api.Models.Asset
ItemDstPortsList           : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemDstProcessNamesList    : {*}
ItemId                     : p:e:KFcN9TaS
ItemName                   : ExternalUpdateGroupsTest
ItemRuleDuration           : 8
ItemSrcUserIdsList         : {b:111001}
ItemSrcUserInfos           : {Any user}
ItemState                  : 1
ItemUpdatedAt              : 1731448306370
ItemUrl                    : https://external.posh.local
UpdatedById                : m:b7a85d794b3bb820413309acefe94adcb8767c16
UpdatedByName              : powershell
```

This cmdlet updates an external access policy.
