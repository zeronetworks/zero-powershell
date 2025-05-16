### Example 1: List rules for a specific group.
```powershell
$group = (Get-ZNGroup -Search "Domain controllers").Items | where {$_.Domain -eq "tag"}
Get-ZNGroupsOutboundRule -Groupid $group.Id -GroupType tag -AddBuiltins
```

```output
CreatedAt     RemoteEntityInfos                           LocalEntityInfoName  Ruleclass ActivitiesCount Id                                   CreatedByEnforcementS
                                                                                                                                              ource
---------     -----------------                           -------------------  --------- --------------- --                                   ---------------------
1694372599763 {ot1777}                                    All segmented assets           0               d69a32ec-a5ea-4915-a33f-297c6ec2ceec 5                    
1675961668454 {Any asset}                                 All segmented assets           0               721c3616-4914-4b66-b987-64af3d50dbae 5                    
1675961668436 {Any asset except segmented OT/IoT devices} All segmented assets           36490           b49360ce-3b4b-4e67-a613-42d4704d097f 5
```

This cmdlet gets rules for a specific group.

### Example 2: Get a specific rule for a specific group
```powershell
Get-ZNGroupsOutboundRule -Groupid $group.Id -GroupType tag -RuleId d69a32ec-a5ea-4915-a33f-297c6ec2ceec
```

```output
ApprovedById               : 
ApprovedByName             : 
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
ItemAction                 : 1
ItemActivitiesCount        : 0
ItemApprovedAt             : 
ItemCreatedAt              : 1694372599763
ItemDescription            : 
ItemDirection              : 2
ItemExcludedEntityInfos    : {}
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : d69a32ec-a5ea-4915-a33f-297c6ec2ceec
ItemLocalEntityId          : b:110002
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {a:t:OeG7qsVV}
ItemRemoteEntityInfos      : {ot1777}
ItemRuleclass              : 
ItemState                  : 1
ItemUpdatedAt              : 
LocalEntityInfoId          : b:110002
LocalEntityInfoName        : All segmented assets
UpdatedById                : 
UpdatedByName              : 
```

This cmdlet can get a specific rule for a specific group.
