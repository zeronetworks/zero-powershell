### Example 1: List external access policies for a user
```powershell
(Get-ZNUserExternalAccessPolicy -UserId u:a:jRVryncp).Items
```

```output
CreatedAt                  : 1728092471548
CreatedByEmail             : 
CreatedByEnforcementSource : 4
CreatedById                : u:a:JnQxZS6j
CreatedByName              : nicholas-ad
CreatedByUserRole          : 1
Description                : 
DstAssetId                 : a:n:3Odw9d40
DstAssetInfo               : ZeroNetworks.PowerShell.Cmdlets.Api.Models.Asset
DstPortsList               : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
DstProcessNamesList        : {*}
Id                         : p:e:J92SSHLf
Name                       : Ansible
RuleDuration               : 8
SrcUserIdsList             : {u:a:jRVryncp}
SrcUserInfos               : {zero}
State                      : 1
UpdatedAt                  : 1728092471548
UpdatedById                : 
UpdatedByName              : 
Url                        : https://ansible.posh.local
```

This cmdlet lists external access policies for a user.

### Example 2: Get an extenal access policy for a user
```powershell
Get-ZNUserExternalAccessPolicy -UserId u:a:jRVryncp -PolicyId p:e:J92SSHLf
```

```output
CreatedByEmail             : 
CreatedByEnforcementSource : 4
CreatedById                : u:a:JnQxZS6j
CreatedByName              : nicholas-ad
CreatedByUserRole          : 1
ItemCreatedAt              : 1728092471548
ItemDescription            : 
ItemDstAssetId             : a:n:3Odw9d40
ItemDstAssetInfo           : ZeroNetworks.PowerShell.Cmdlets.Api.Models.Asset
ItemDstPortsList           : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemDstProcessNamesList    : {*}
ItemId                     : p:e:J92SSHLf
ItemName                   : Ansible
ItemRuleDuration           : 8
ItemSrcUserIdsList         : {u:a:jRVryncp}
ItemSrcUserInfos           : {zero}
ItemState                  : 1
ItemUpdatedAt              : 1728092471548
ItemUrl                    : https://ansible.posh.local
UpdatedById                : 
UpdatedByName              :
```

This cmdlet gets an external access policy for a user.
