### Example 1: Update inbound block rule
```powershell
#Get the Rule
$rule = Get-ZNInboundBlockRule | where {$_.Description -eq "Test Rule"}
# add an asset to the source list
$rule.RemoteEntityIdsList = (Search-ZNAsset -Fqdn fs1.zero.labs)
#Update the rule
Update-ZNInboundBlockRule -RuleId $rule.id -RemoteEntityIdsList $rule.RemoteEntityIdsList
```

```output
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
ItemAction                 : 2
ItemCreatedAt              : 1665664250443
ItemDescription            : Test Rule
ItemDirection              : 1
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : c857c4e6-1c91-4e00-bf13-5bb3c702a396
ItemLocalEntityId          : b:110002
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {a:a:GnyWAsYs}
ItemRemoteEntityInfos      : 
ItemState                  : 1
ItemUpdatedAt              : 1676343517779
LocalEntityInfoId          : 
LocalEntityInfoName        : 
UpdatedById                : 39cc28f6-7bba-4310-95e6-a7e7189a3ed5
UpdatedByName              : Nicholas DiCola
```

This cmdlet will update an inbound block rule for the environment.
