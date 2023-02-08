### Example 1: Update inbound block rule
```powershell
#Get the Rule
$rule = Get-ZNInboundBlockRule | where {$_.Description -eq "Test Rule"}
# add an asset to the source list
$rule.RemoteEntityIdsList += (Search-ZNAsset -Fqdn fs1.zero.labs)
#Update the rule
Update-ZNInboundBlockRule -RuleId $rule.id -ExpiresAt $rule.ExpiresAt -LocalEntityId $rule.LocalEntityId -LocalProcessesList $rule.LocalProcessesList -PortsList $rule.PortsList -RemoteEntityIdsList $rule.RemoteEntityIdsList -State $rule.State -Description $rule.Description
```

```output
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
ItemAction                 : 2
ItemCreatedAt              : 1665664250443
ItemDescription            : Test Rule
ItemDirection              : 1
ItemExpiresAt              : 0
ItemId                     : c857c4e6-1c91-4e00-bf13-5bb3c702a396
ItemLocalEntityId          : b:110002
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {b:120101010120, b:120101010220}
ItemRemoteEntityInfos      : 
ItemState                  : 1
ItemUpdatedAt              : 1665664347508
LocalEntityInfoId          : 
LocalEntityInfoName        : 
```

This cmdlet will update an inbound block rule for the environment.
