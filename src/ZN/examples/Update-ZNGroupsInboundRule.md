### Example 1: Update a rule for a group
```powershell
$group = Get-ZNGroup -Search "Domain controllers" | where {$_.Id -like "g:t:*"}
$rule = Get-ZNGroupsInboundRule -GroupId $group.Id -GroupType Tag | where {$_.Description -eq "Test Rule"}
$rule.RemoteEntityIdsList += (Search-ZNAsset -Fqdn cs01.posh.local)
Update-ZNGroupsInboundRule -GroupId $group.Id -GroupType tag -RuleId $rule.id -RemoteEntityIdsList $rule.RemoteEntityIdsList
```

```output
ApprovedById               : 
ApprovedByName             : 
CreatedByEnforcementSource : 4
CreatedById                : u:a:w27loY5p
CreatedByName              : nicholas
CreatedByUserRole          : 1
ItemAction                 : 1
ItemActivitiesCount        : 
ItemApprovedAt             : 
ItemCreatedAt              : 1695055458286
ItemDescription            : Test Rule
ItemDirection              : 1
ItemExcludedEntityInfos    : 
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : 676d79ad-6af0-491b-ba6d-108fd5cafbd3
ItemLocalEntityId          : g:t:01445453
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {a:a:OtfLGUBq, a:l:aayoPnNJ}
ItemRemoteEntityInfos      : 
ItemRuleclass              : 
ItemState                  : 1
ItemUpdatedAt              : 1695055541787
LocalEntityInfoId          : 
LocalEntityInfoName        : 
UpdatedById                : m:13c49a4eb4fa90bbb948b6c8de5175ad2d36cfbc
UpdatedByName              : ModuleTesting
```

This cmdlet updates a rule for a group.