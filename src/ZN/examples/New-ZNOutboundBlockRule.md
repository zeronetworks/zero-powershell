### Example 1: Create an outbound block rule
```powershell
$portsList = New-ZNPortsList -Protocol Any
$source = (Get-ZNOutboundAllowRulesSourceCandidate -search "all protected assets").Items
$destination = Invoke-ZNEncodeEntityIp -IP 1.2.3.4 #MalicousIP
New-ZNOutboundBlockRule -LocalEntityId $source.Id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($destination) -State 1
CreatedByEnforcementSource : 0
CreatedById                : m:86786c2f022cf2bd7dc38f165c98b4ee736c8c3b
CreatedByName              : PowerShell
CreatedByUserRole          : 4
ItemAction                 : 2
ItemCreatedAt              : 1665759335488
ItemDescription            : 
ItemDirection              : 2
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : b4becec7-378d-4e8a-a8f9-fa31f644d74c
ItemLocalEntityId          : b:110002
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {b:120102030420}
ItemState                  : 1
ItemUpdatedAt              : 
UpdatedById                : 
UpdatedByName              :
```

This cmdlet creates an outbound block rule for the environment.
