### Example 1: Update a rule
```powershell
$rule = Get-ZNOutboundAllowRule | where {$_.Description -eq "Test Rule"}
$rule.RemoteEntityIdsList += (Search-ZNAsset -Fqdn fs1.zero.labs)
Update-ZNOutboundAllowRule -RuleId $rule.id -ExpiresAt $rule.ExpiresAt -LocalEntityId $rule.LocalEntityId -LocalProcessesList $rule.LocalProcessesList -PortsList $rule.PortsList -RemoteEntityIdsList $rule.RemoteEntityIdsList -State $rule.State -Description $rule.Description

ApprovedById               : 
ApprovedByName             : 
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
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {a:a:GnyWAsYs, a:a:ZgBWOMyc}
ItemRemoteEntityInfos      : 
ItemState                  : 1
ItemUpdatedAt              : 1665679637830
LocalEntityInfoId          : 
LocalEntityInfoName        :
UpdatedById                : 39cc28f6-7bba-4310-95e6-a7e7189a3ed5
UpdatedByName              : Nicholas DiCola
```

This cmdlet updates an outbound allow rule.
