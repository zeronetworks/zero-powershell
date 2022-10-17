### Example 1: Create an outbound allow rule
```powershell
$portsList = New-ZNSegmentPortsList -Protocol TCP -Ports "53"
$source = (Get-ZNSegmentOutboundAllowRulesSourceCandidate -search "all protected assets").Items
$destination = Invoke-ZNSegmentEncodeEntityIp -IP 8.8.8.8
New-ZNSegmentOutboundAllowRule -LocalEntityId $destination.Id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source.id) -State 1
```

```output
CreatedByEnforcementSource : 0
CreatedById                : m:86786c2f022cf2bd7dc38f165c98b4ee736c8c3b
CreatedByName              : PowerShell
CreatedByUserRole          : 4
ItemAction                 : 1
ItemCreatedAt              : 1665759234620
ItemDescription            : 
ItemDirection              : 2
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : c551b646-75d1-477d-8023-367461883fd7
ItemLocalEntityId          : b:110002
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Segment.Models.PortsListItem}
ItemRemoteEntityIdsList    : {b:120808080820}
ItemState                  : 1
ItemUpdatedAt              : 
UpdatedById                : 
UpdatedByName              : 
```

This cmdlet creates an outbound allow rule for the environment.
