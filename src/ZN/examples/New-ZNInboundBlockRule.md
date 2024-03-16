### Example 1: Create an inbound block rule
```powershell
$portsList = New-ZNPortsList -Protocol Any
$source = (Get-ZNInboundBlockRulesSourceCandidate -Search "win7").Items
$destination = (Get-ZNInboundBlockRulesDestinationCandidate -Search "all protected Assets").Items
New-ZNInboundBlockRule -LocalEntityId $destination.Id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source.id) -State 1
```

```output
CreatedByEnforcementSource : 0
CreatedById                : m:86786c2f022cf2bd7dc38f165c98b4ee736c8c3b
CreatedByName              : PowerShell
CreatedByUserRole          : 4
ItemAction                 : 2
ItemCreatedAt              : 1665759006696
ItemDescription            : 
ItemDirection              : 1
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : 642e263c-0e22-4c36-963a-46722b6988ce
ItemLocalEntityId          : b:110002
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {a:a:5wiknOhs}
ItemState                  : 1
ItemUpdatedAt              : 
UpdatedById                : 
UpdatedByName              : 
```

This cmdlet creates an inbound block rule for the environment.
