### Example 1: List external access policies
```powershell
(Get-ZNExternalAccessPolicy).Items
```

```output
CreatedAt                  : 1726598869813
CreatedByEmail             : 
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
Description                : 
DstAssetId                 : a:n:3Odw9d40
DstAssetInfo               : ZeroNetworks.PowerShell.Cmdlets.Api.Models.Asset
DstPortsList               : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
DstProcessNamesList        : {*}
Id                         : p:e:JBy1jmUL
Name                       : Ansible Server
RuleDuration               : 8
SrcUserIdsList             : {b:111001}
SrcUserInfos               : {Any user}
State                      : 1
UpdatedAt                  : 1726600514080
UpdatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
UpdatedByName              : Zero Networks
Url                        : https://ansible.test.local
```

This cmdlet lists all external access policies.

### Example 2: Get an external access policy
```powershell
Get-ZNExternalAccessPolicy -PolicyId p:e:JBy1jmUL
```

```output
CreatedByEmail             : 
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
ItemCreatedAt              : 1726598869813
ItemDescription            : 
ItemDstAssetId             : a:n:3Odw9d40
ItemDstAssetInfo           : ZeroNetworks.PowerShell.Cmdlets.Api.Models.Asset
ItemDstPortsList           : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemDstProcessNamesList    : {*}
ItemId                     : p:e:JBy1jmUL
ItemName                   : Ansible Server
ItemRuleDuration           : 8
ItemSrcUserIdsList         : {b:111001}
ItemSrcUserInfos           : {Any user}
ItemState                  : 1
ItemUpdatedAt              : 1726600514080
ItemUrl                    : https://ansible.test.local
UpdatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
UpdatedByName              : Zero Networks
```

This cmdlet gets an external access policy.
