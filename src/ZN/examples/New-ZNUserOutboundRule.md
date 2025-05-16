### Example 1: Create an outbound allow rule
```powershell
$user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
$portsList = New-ZNPortsList -Protocol TCP -Ports "44,45"
$source = (Get-ZNOutboundRulesSourceCandidate -search "All Segmented Assets").Items
$destination = (Get-ZNOutboundRulesDestinationCandidate -Search FS01 -RuleType 3).Items
$sourceUserEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.SrcUsersListItem]::new()
$sourceUserEntity.Id = $user.id
New-ZNUserOutboundRule -UserId $user.id -Action 1 -LocalEntityId $source$.Id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($destination.id) -State 1 -SrcUsersList @($sourceUserEntity)
```

```output
ApprovedById               : 
ApprovedByName             : 
CreatedByEmail             : 
CreatedByEnforcementSource : 6
CreatedById                : m:3929d40ebf7ecfe8dbce815b1c97ea93c2b2aa59
CreatedByName              : poshtesting
CreatedByUserRole          : 4
ItemAction                 : 1
ItemActivitiesCount        : 
ItemApprovedAt             : 
ItemCreatedAt              : 1745512220149
ItemDescription            : 
ItemDirection              : 2
ItemExcludedEntityInfos    : 
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 
ItemIPSecOpt               : 1
ItemId                     : 5f461a39-7749-4f6d-b4a3-d87700a10b88
ItemLocalEntityId          : b:110002
ItemLocalEntityInfos       : 
ItemLocalEntitySuccessor   : 
ItemLocalProcessesList     : {*}
ItemMirrorSwitchRuleId     : 
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {a:a:wmw7t9vI}
ItemRemoteEntityInfos      : 
ItemRuleclass              : 
ItemServicesList           : {}
ItemSrcUserInfos           : 
ItemSrcUsersList           : {u:a:2wl9Once}
ItemState                  : 1
ItemUpdatedAt              : 1745512220149
UpdatedById                : 
UpdatedByName              : 
```

This cmdlet creates an outbound allow rule for the user.