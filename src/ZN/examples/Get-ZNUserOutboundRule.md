### Example 1: List outbound rules
```powershell
$user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
(Get-ZNUserOutboundRule -UserId $user.Id).Items
```

```output
Action                     : 1
ActivitiesCount            : 0
ApprovedAt                 : 
ApprovedById               : 
ApprovedByName             : 
CreatedAt                  : 1745322191779
CreatedByEmail             : 
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
Description                : 
Direction                  : 2
ExcludedEntityInfos        : {}
ExcludedLocalIdsList       : {}
ExpiresAt                  : 
IPSecOpt                   : 1
Id                         : 3dfed271-c24f-4867-90ff-8445951ede4b
LocalEntityId              : g:a:exFKiv8f
LocalEntityInfos           : {Backup Operators}
LocalEntitySuccessor       : 
LocalProcessesList         : {*}
MirrorSwitchRuleId         : 
ParentId                   : 
ParentType                 : 0
PortsList                  : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
RemoteEntityIdsList        : {b:110001}
RemoteEntityInfos          : {Any asset}
Ruleclass                  : 
ServicesList               : {}
SrcUserInfos               : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.GroupsOrUsersList}
SrcUsersList               : {u:a:2wl9Once}
State                      : 1
UpdatedAt                  : 1745322191779
UpdatedById                : 
UpdatedByName              :
```

This cmdlet lits outbound rules for a user.

### Example 2: Get an outbound rule
```powershell
$user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
Get-ZNUserOutboundRule -UserId $user.Id -RuleId 3dfed271-c24f-4867-90ff-8445951ede4b
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
ItemActivitiesCount        : 0
ItemApprovedAt             : 
ItemCreatedAt              : 1745322191779
ItemDescription            : 
ItemDirection              : 2
ItemExcludedEntityInfos    : {}
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 
ItemIPSecOpt               : 1
ItemId                     : 3dfed271-c24f-4867-90ff-8445951ede4b
ItemLocalEntityId          : g:a:exFKiv8f
ItemLocalEntityInfos       : {Backup Operators}
ItemLocalEntitySuccessor   : 
ItemLocalProcessesList     : {*}
ItemMirrorSwitchRuleId     : 
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {b:110001}
ItemRemoteEntityInfos      : {Any asset}
ItemRuleclass              : 
ItemServicesList           : {}
ItemSrcUserInfos           : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.GroupsOrUsersList}
ItemSrcUsersList           : {u:a:2wl9Once}
ItemState                  : 1
ItemUpdatedAt              : 1745322191779
UpdatedById                : 
UpdatedByName              : 
```

This cmdlet gets a rule for a user.
