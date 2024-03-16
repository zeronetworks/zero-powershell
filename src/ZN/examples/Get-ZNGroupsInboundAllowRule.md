### Example 1: List rules for a specific group.
```powershell
$group = Get-ZNGroup -Search "Domain controllers" | where {$_.Domain -eq "tag"}
Get-ZNGroupsInboundAllowRule -Groupid $group.Id -GroupType tag
```

```output
CreatedAt     RemoteEntityInfos LocalEntityInfoName Ruleclass ActivitiesCount Id                                   CreatedByEnforcementSource State Description
---------     ----------------- ------------------- --------- --------------- --                                   -------------------------- ----- -----------
1677252137875 {Any asset}       Domain controllers            17296           6764bd86-f3c6-4949-a827-64e1499b1b86 5                          1     Auto-generated rule for tag groups
```

This cmdlet gets rules for a specific group.

### Example 2: Get a specific rule for a specific group
```powershell
Get-ZNGroupsInboundAllowRule -Groupid $group.Id -GroupType tag -RuleId 6764bd86-f3c6-4949-a827-64e1499b1b86
```

```output
ApprovedById               : 
ApprovedByName             : 
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
ItemAction                 : 1
ItemActivitiesCount        : 17296
ItemApprovedAt             : 
ItemCreatedAt              : 1677252137875
ItemDescription            : Auto-generated rule for tag groups
ItemDirection              : 1
ItemExcludedEntityInfos    : {}
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : 6764bd86-f3c6-4949-a827-64e1499b1b86
ItemLocalEntityId          : g:t:01445453
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem, ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {b:110001}
ItemRemoteEntityInfos      : {Any asset}
ItemRuleclass              : 
ItemState                  : 1
ItemUpdatedAt              : 1684704013889
LocalEntityInfoId          : g:t:01445453
LocalEntityInfoName        : Domain controllers
UpdatedById                : 
UpdatedByName              : 
```

This cmdlet can get a specific rule for a specific group.

