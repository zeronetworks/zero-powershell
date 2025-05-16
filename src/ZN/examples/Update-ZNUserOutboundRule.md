### Example 1: Update an outvound rule
```powershell
$user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
Update-ZNUserOutboundRule -UserId $user.id -RuleId 3dfed271-c24f-4867-90ff-8445951ede4b -Description "new description"
```

```output
ApprovedById               : 
ApprovedByName             : 
CreatedByEmail             : 
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
ItemAction                 : 1
ItemActivitiesCount        : 
ItemApprovedAt             : 
ItemCreatedAt              : 1745322191779
ItemDescription            : new description
ItemDirection              : 2
ItemExcludedEntityInfos    : 
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 
ItemIPSecOpt               : 1
ItemId                     : 3dfed271-c24f-4867-90ff-8445951ede4b
ItemLocalEntityId          : g:a:exFKiv8f
ItemLocalEntityInfos       : 
ItemLocalEntitySuccessor   : 
ItemLocalProcessesList     : {*}
ItemMirrorSwitchRuleId     : 
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {b:110001}
ItemRemoteEntityInfos      : 
ItemRuleclass              : 
ItemServicesList           : {}
ItemSrcUserInfos           : 
ItemSrcUsersList           : {}
ItemState                  : 1
ItemUpdatedAt              : 1745582446044
UpdatedById                : m:3929d40ebf7ecfe8dbce815b1c97ea93c2b2aa59
UpdatedByName              : poshtesting
```

This cmdlet updates an outbound rule.