### Example 1: List outbound allow rules
```powershell
Get-ZNOutboundAllowRule
```

```output
Action CreatedAt     Description Direction ExpiresAt Id                                   LocalEntityId LocalProcessesList ParentId ParentType RemoteEntityIdsList State UpdatedAt
------ ---------     ----------- --------- --------- --                                   ------------- ------------------ -------- ---------- ------------------- ----- ---------
1      1665518196557             2         0         0a1444a2-7cb7-4319-a0de-a013d6b67402 b:110002      {*}                         0          {b:120808080820}    1   
```

This cmdlet gets outbound allow rules from the environment.

### Example 2: Get a specific outbound allow rule
```powershell
 Get-ZNOutboundAllowRule -RuleId "c551b646-75d1-477d-8023-367461883fd7"
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
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {b:120808080820}
ItemRemoteEntityInfos      : {8.8.8.8}
ItemState                  : 1
ItemUpdatedAt              : 1671621569513
LocalEntityInfoId          : b:110002
LocalEntityInfoName        : All protected assets
UpdatedById                : 
UpdatedByName              :
```

Get a specific outbound allow rule.

