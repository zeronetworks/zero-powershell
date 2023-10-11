### Example 1: Create a rule for a group
```powershell
$group = Get-ZNGroup -Search "Domain controllers" | where {$_.Id -like "g:t:*"}
$sourceasset = Search-ZNAsset -fqdn cs01.posh.local
$portsList = New-ZNPortsList -Protocol ICMP
New-ZNGroupsOutboundAllowRule -GroupId $group.id -GroupType tag -LocalEntityId $group.Id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($sourceAsset) -State 1                                                                                                                  
     
ApprovedById               : 
ApprovedByName             : 
CreatedByEnforcementSource : 6
CreatedById                : m:13c49a4eb4fa90bbb948b6c8de5175ad2d36cfbc
CreatedByName              : ModuleTesting
CreatedByUserRole          : 4
ItemAction                 : 1
ItemActivitiesCount        : 
ItemApprovedAt             : 
ItemCreatedAt              : 1694728515158
ItemDescription            : 
ItemDirection              : 2
ItemExcludedEntityInfos    : 
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : 576bf359-4164-4dea-86a2-b1fdb3ceea60
ItemLocalEntityId          : g:t:01445453
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {a:l:aayoPnNJ}
ItemRemoteEntityInfos      : 
ItemRuleclass              : 
ItemState                  : 1
ItemUpdatedAt              : 
LocalEntityInfoId          : 
LocalEntityInfoName        : 
UpdatedById                : 
UpdatedByName              : 
```

This cmdlet creates a rule for a group.
