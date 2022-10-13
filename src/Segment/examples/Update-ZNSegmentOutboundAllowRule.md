### Example 1: Update outbound allow rule
```powershell
#Get the Rule
$rule = Get-ZNSegmentOutboundAllowRule | where {$_.Description -eq "Test Rule"}
# add an asset to the source list
$rule.RemoteEntityIdsList += (Search-ZNSegmentAsset -Fqdn fs1.zero.labs)
#Update the rule
Update-ZNSegmentOutboundAllowRule -RuleId $rule.id -ExpiresAt $rule.ExpiresAt -LocalEntityId $rule.LocalEntityId -LocalProcessesList $rule.LocalProcessesList -PortsList $rule.PortsList -RemoteEntityIdsList $rule.RemoteEntityIdsList -State $rule.State -Description $rule.Description
```

```output
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
ItemAction                 : 1
ItemCreatedAt              : 1665679608950
ItemDescription            : Test Rule
ItemDirection              : 2
ItemExpiresAt              : 0
ItemId                     : fc979495-5e72-4570-b90b-af1394ddabbc
ItemLocalEntityId          : b:110002
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Segment.Models.PortsListItem}
ItemRemoteEntityIdsList    : {a:a:GnyWAsYs, a:a:ZgBWOMyc}
ItemRemoteEntityInfos      : 
ItemState                  : 1
ItemUpdatedAt              : 1665679637830
LocalEntityInfoId          : 
LocalEntityInfoName        : 
```

This cmdlet will update an outbound allow rule for the environment.
