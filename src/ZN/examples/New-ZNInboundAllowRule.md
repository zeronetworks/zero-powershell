### Example 1: Create an inbound allow rule
```powershell
$portsList = New-ZNPortsList -Protocol TCP -Ports "44,45"
$source = (Get-ZNInboundAllowRulesSourceCandidate -search "any asset").Items
$destination = (Get-ZNInboundAllowRulesDestinationCandidate -Search FS1).Items
New-ZNInboundAllowRule -LocalEntityId $destination.Id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source.id) -State 1
CreatedByEnforcementSource : 0
CreatedById                : m:86786c2f022cf2bd7dc38f165c98b4ee736c8c3b
CreatedByName              : PowerShell
CreatedByUserRole          : 4
ItemAction                 : 1
ItemCreatedAt              : 1665758735297
ItemDescription            : 
ItemDirection              : 1
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : 6b38f7ef-2374-4c1e-8c57-da65fe2cbb5f
ItemLocalEntityId          : a:a:GnyWAsYs
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {b:110001}
ItemState                  : 1
ItemUpdatedAt              : 
UpdatedById                : 
UpdatedByName              :
```

This cmdlet creates an inbound allow rule for the environment.
