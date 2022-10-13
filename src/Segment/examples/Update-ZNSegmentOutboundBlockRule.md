### Example 1: Update outbound block rule
```powershell
#Get the Rule
$rule = Get-ZNSegmentOutboundBlockRule | where {$_.Description -eq "Test Rule"}
# add an asset to the source list
$rule.RemoteEntityIdsList += (Invoke-ZNSegmentEncodeEntityIP -IP 1.1.1.2)
#Update the rule
Update-ZNSegmentOutboundBlockRule -RuleId $rule.id -ExpiresAt $rule.ExpiresAt -LocalEntityId $rule.LocalEntityId -LocalProcessesList $rule.LocalProcessesList -PortsList $rule.PortsList -RemoteEntityIdsList $rule.RemoteEntityIdsList -State $rule.State -Description $rule.Description
```

```output
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
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Segment.Models.PortsListItem}
ItemRemoteEntityIdsList    : {b:120101010120, b:120101010220}
ItemRemoteEntityInfos      : 
ItemState                  : 1
ItemUpdatedAt              : 1665679760083
LocalEntityInfoId          : 
LocalEntityInfoName        : 
```

This cmdlet will update an outbound block rule for the environment.
