### Example 1: Update inbound allow rule
```powershell
#Get the Rule
$rule = Get-ZNSegmentInboundAllowRule | where {$_.Description -eq "Test Rule"}
# add an asset to the source list
$rule.RemoteEntityIdsList += (Search-ZNSegmentAsset -Fqdn fs1.zero.labs)
#Update the rule
Update-ZNSegmentInboundAllowRule -RuleId $rule.id -ExpiresAt $rule.ExpiresAt -LocalEntityId $rule.LocalEntityId -LocalProcessesList $rule.LocalProcessesList -PortsList $rule.PortsList -RemoteEntityIdsList $rule.RemoteEntityIdsList -State $rule.State -Description $rule.Description
```

```output
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
ItemAction                 : 1
ItemCreatedAt              : 1665663703393
ItemDescription            : Test Rule
ItemDirection              : 1
ItemExpiresAt              : 0
ItemId                     : 9aff88fd-6bd4-4511-ad4e-3d81a39da784
ItemLocalEntityId          : b:110002
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Segment.Models.PortsListItem}
ItemRemoteEntityIdsList    : {a:a:GnyWAsYs, a:a:ZgBWOMyc}
ItemRemoteEntityInfos      : 
ItemState                  : 1
ItemUpdatedAt              : 1665664091856
LocalEntityInfoId          : 
LocalEntityInfoName        : 
```

This cmdlet will update an inbound allow rule for the environment.
