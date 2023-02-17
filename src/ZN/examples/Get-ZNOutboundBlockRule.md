### Example 1: List outbound block rules
```powershell
Get-ZNOutboundBlockRule
```

```output
Action CreatedAt     Description                               Direction ExpiresAt Id                                   LocalEntityId LocalProcessesList ParentId ParentType RemoteEntityIdsList              State UpdatedAt
------ ---------     -----------                               --------- --------- --                                   ------------- ------------------ -------- ---------- -------------------              ----- ---------
2      1648736821514 Sentinel Integration - Block Malicous IPs 2         0         0faafa72-2540-4d55-9418-ed62472e0e2d b:110002      {*}                         0          {b:12ac10010120, b:12ac10020120} 1     1665491061074     
```

This cmdlet gets outbound block rules from the environment.

### Example 2: Get a specific outbound block rule
```powershell
Get-ZNOutboundBlockRule -RuleId "0faafa72-2540-4d55-9418-ed62472e0e2d"
```

```output
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
ItemAction                 : 2
ItemCreatedAt              : 1648736821514
ItemDescription            : Sentinel Integration - Block Malicous IPs
ItemDirection              : 2
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : 0faafa72-2540-4d55-9418-ed62472e0e2d
ItemLocalEntityId          : b:110002
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {b:12ac10010120, b:12ac10020120}
ItemRemoteEntityInfos      : {172.16.1.1, 172.16.2.1}
ItemState                  : 1
ItemUpdatedAt              : 1675945614691
LocalEntityInfoId          : b:110002
LocalEntityInfoName        : All protected assets
UpdatedById                : m:79e1eb0a32b6f5ff066ed50cf180bcab0d122bf1
UpdatedByName              : MS Sentinel Integration
```

Get a specific outbound block rule.

