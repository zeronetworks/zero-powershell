### Example 1: Update a rule
```powershell
$rule = Get-ZNOutboundBlockRule | where {$_.Description -eq "Test Rule"}
$rule.RemoteEntityIdsList += (Invoke-ZNEncodeEntityIP -IP 1.1.1.2)
Update-ZNOutboundBlockRule -RuleId $rule.id -ExpiresAt $rule.ExpiresAt -LocalEntityId $rule.LocalEntityId -LocalProcessesList $rule.LocalProcessesList -PortsList $rule.PortsList -RemoteEntityIdsList $rule.RemoteEntityIdsList -State $rule.State -Description $rule.Description
```

```output
ApprovedById               : 
ApprovedByName             : 
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
ItemAction                 : 2
ItemCreatedAt              : 1665679730342
ItemDescription            : Test Rule
ItemDirection              : 2
ItemExpiresAt              : 0
ItemId                     : 627e3705-2f26-4cb6-b5e2-b73b76d900b2
ItemLocalEntityId          : b:110002
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {b:120101010120, b:120101010220}
ItemRemoteEntityInfos      : 
ItemState                  : 1
ItemUpdatedAt              : 1665679760083
LocalEntityInfoId          : 
LocalEntityInfoName        : 
UpdatedById                : 39cc28f6-7bba-4310-95e6-a7e7189a3ed5
UpdatedByName              : Nicholas DiCola
```

This cmdlet updates an outbound block rule.
