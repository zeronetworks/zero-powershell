### Example 1: Update a rule for a group
```powershell
$group = Get-ZNGroup -Search "Domain controllers" | where {$_.Id -like "g:t:*"}
$rule = Get-ZNGroupsOutboundBlockRule -GroupId $group.Id -GroupType Tag | where {$_.Description -eq "Test Rule"}
$rule.RemoteEntityIdsList += (Search-ZNAsset -Fqdn cs01.posh.local)
Update-ZNGroupsOutboundBlockRule -GroupId $group.Id -GroupType tag -RuleId $rule.id -RemoteEntityIdsList $rule.RemoteEntityIdsList
```

```output
ApprovedById               : 
ApprovedByName             : 
CreatedByEnforcementSource : 4
CreatedById                : u:a:w27loY5p
CreatedByName              : nicholas
CreatedByUserRole          : 1
ItemAction                 : 2
ItemActivitiesCount        : 
ItemApprovedAt             : 
ItemCreatedAt              : 1695055500168
ItemDescription            : Test Rule
ItemDirection              : 2
ItemExcludedEntityInfos    : 
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : 7a2b81f2-cb15-4b6e-a5d9-5b07f0534877
ItemLocalEntityId          : g:t:01445453
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {a:a:OtfLGUBq, a:l:aayoPnNJ}
ItemRemoteEntityInfos      : 
ItemRuleclass              : 
ItemState                  : 1
ItemUpdatedAt              : 1695055610616
LocalEntityInfoId          : 
LocalEntityInfoName        : 
UpdatedById                : m:13c49a4eb4fa90bbb948b6c8de5175ad2d36cfbc
UpdatedByName              : ModuleTesting
```

This cmdlet updates a rule for a group.