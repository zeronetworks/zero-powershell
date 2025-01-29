### Example 1: Create an outbound allow rule
```powershell
$portsList = New-ZNPortsList -Protocol TCP -Ports "44,45"
$source = (Get-ZNAeExclusionsOutboundSourceCandidate -search "Any Asset").Items
$destination = (Get-ZNAeExclusionsOutboundDestinationCandidate -Search 'All segmented assets').Items
New-ZNAeExclusionsOutbound -Action 1 -LocalEntityId $destination.Id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source.id)
```

```output
DeletedById                    : 
DeletedByName                  : 
ItemAction                     : 1
ItemActivitiesCount            : 
ItemApprovedAt                 : 
ItemApprovedById               : 
ItemApprovedByName             : 
ItemCreatedAt                  : 1737995669374
ItemCreatedByEmail             : 
ItemCreatedByEnforcementSource : 6
ItemCreatedById                : m:3929d40ebf7ecfe8dbce815b1c97ea93c2b2aa59
ItemCreatedByName              : poshtesting
ItemCreatedByUserRole          : 4
ItemDeletedAt                  : 
ItemDescription                : 
ItemDirection                  : 2
ItemExcludedEntityInfos        : 
ItemExcludedLocalIdsList       : {}
ItemExpiresAt                  : 
ItemIPSecOpt                   : 1
ItemId                         : 7c9e621b-7e46-4bc0-b3c5-572a9d0f8746
ItemLocalEntityId              : b:110002
ItemLocalEntityInfos           : 
ItemLocalEntitySuccessor       : 
ItemLocalProcessesList         : {*}
ItemMirrorSwitchRuleId         : 
ItemParentId                   : 
ItemParentType                 : 0
ItemPortsList                  : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList        : {b:110001}
ItemRemoteEntityInfos          : 
ItemRuleclass                  : 
ItemServicesList               : {}
ItemSrcUserInfos               : 
ItemSrcUsersList               : {}
ItemState                      : 7
ItemUpdatedAt                  : 1737995669374
ItemUpdatedById                : 
ItemUpdatedByName              : 
```

This cmdlet creates an outbound AE Exclusion for the environment.