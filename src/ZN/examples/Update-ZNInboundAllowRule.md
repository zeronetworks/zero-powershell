### Example 1: Update a rule
```powershell
$rule = Get-ZNInboundAllowRule | where {$_.Description -eq "Test Rule"}
$rule.RemoteEntityIdsList = (Search-ZNAsset -Fqdn fs1.zero.labs)
Update-ZNInboundAllowRule -RuleId $rule.id -RemoteEntityIdsList $rule.RemoteEntityIdsList
```

```output
ApprovedById               : 
ApprovedByName             : 
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
ItemAction                 : 1
ItemCreatedAt              : 1665663703393
ItemDescription            : Test Rule
ItemDirection              : 1
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : 9aff88fd-6bd4-4511-ad4e-3d81a39da784
ItemLocalEntityId          : b:110002
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {a:a:GnyWAsYs}
ItemRemoteEntityInfos      : 
ItemState                  : 1
ItemUpdatedAt              : 1676343470129
LocalEntityInfoId          : 
LocalEntityInfoName        : 
UpdatedById                : 39cc28f6-7bba-4310-95e6-a7e7189a3ed5
UpdatedByName              : Nicholas DiCola
```

This cmdlet updates an inbound allow rule.
