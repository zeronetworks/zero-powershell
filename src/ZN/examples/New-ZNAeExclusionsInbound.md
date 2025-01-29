### Example 1: Create inbound AE exclusion
```powershell
$portsList = New-ZNPortsList -Protocol TCP -Ports "44,45"
$source = (Get-ZNAeExclusionsInboundSourceCandidate -search "any asset").Items
$destination = (Get-ZNAeExclusionsInboundDestinationCandidate -Search FS01).Items
New-ZNAeExclusionsInbound -LocalEntityId $destination.id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source.id) -Action 1
```

```output
DeletedById                    : 
DeletedByName                  : 
ItemAction                     : 1
ItemActivitiesCount            : 
ItemApprovedAt                 : 
ItemApprovedById               : 
ItemApprovedByName             : 
ItemCreatedAt                  : 1737995421127
ItemCreatedByEmail             : 
ItemCreatedByEnforcementSource : 6
ItemCreatedById                : m:3929d40ebf7ecfe8dbce815b1c97ea93c2b2aa59
ItemCreatedByName              : poshtesting
ItemCreatedByUserRole          : 4
ItemDeletedAt                  : 
ItemDescription                : 
ItemDirection                  : 1
ItemExcludedEntityInfos        : 
ItemExcludedLocalIdsList       : {}
ItemExpiresAt                  : 
ItemIPSecOpt                   : 1
ItemId                         : 1efc3700-d9b2-408e-ac99-5a933cee6cda
ItemLocalEntityId              : a:a:wmw7t9vI
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
ItemUpdatedAt                  : 1737995421127
ItemUpdatedById                : 
ItemUpdatedByName              : 
```

This cmdlet creates an AE inbound exclusion.
