### Example 1: Update an external access policy
```powershell
Update-ZNUserExternalAccessPolicy -UserId "u:a:jRVryncp" -PolicyId p:e:JBy1jmUL -Description "Test"
```

```output
CreatedByEmail             : 
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
ItemCreatedAt              : 1726598869813
ItemDescription            : Test
ItemDstAssetId             : g:t:5V669ce2
ItemDstAssetInfo           : ZeroNetworks.PowerShell.Cmdlets.Api.Models.Asset
ItemDstPortsList           : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemDstProcessNamesList    : {*}
ItemId                     : p:e:JBy1jmUL
ItemName                   : External Servers
ItemRuleDuration           : 8
ItemSrcUserIdsList         : {u:a:jRVryncp}
ItemSrcUserInfos           : {Zero}
ItemState                  : 1
ItemUpdatedAt              : 1728239252992
ItemUrl                    : https://external.psoh.local
UpdatedById                : m:ea53c6e1d0072c5974ceec597b64989274b7ba5f
UpdatedByName              : powershell
```

This cmdlet updates an external access policy.
