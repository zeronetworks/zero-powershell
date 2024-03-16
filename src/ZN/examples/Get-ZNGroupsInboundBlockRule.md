### Example 1: List rules for a specific group.
```powershell
$group = Get-ZNGroup -Search "Domain controllers" | where {$_.Domain -eq "tag"}
Get-ZNGroupsInboundBlockRule -Groupid $group.Id -GroupType tag
```

```output
CreatedAt     RemoteEntityInfos LocalEntityInfoName Ruleclass ActivitiesCount Id                                   CreatedByEnforcementSource State Description
---------     ----------------- ------------------- --------- --------------- --                                   -------------------------- ----- -----------
1694389877854 {1.1.1.1}         Domain controllers            0               6dbe24dc-07db-4330-b7d4-22bc3a2dd3d1 5                          1
```

This cmdlet gets rules for a specific group.

### Example 2: Get a specific rule for a specific group
```powershell
Get-ZNGroupsInboundBlockRule -Groupid $group.Id -GroupType tag -RuleId 6dbe24dc-07db-4330-b7d4-22bc3a2dd3d1
```

```output
ApprovedById               : 
ApprovedByName             : 
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
ItemAction                 : 2
ItemActivitiesCount        : 0
ItemApprovedAt             : 
ItemCreatedAt              : 1694389877854
ItemDescription            : 
ItemDirection              : 1
ItemExcludedEntityInfos    : {}
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : 6dbe24dc-07db-4330-b7d4-22bc3a2dd3d1
ItemLocalEntityId          : g:t:01445453
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {b:120101010120}
ItemRemoteEntityInfos      : {1.1.1.1}
ItemRuleclass              : 
ItemState                  : 1
ItemUpdatedAt              : 
LocalEntityInfoId          : g:t:01445453
LocalEntityInfoName        : Domain controllers
UpdatedById                : 
UpdatedByName              :
```

This cmdlet can get a specific rule for a specific group.

