### Example 1: List outbound allow rules
```powershell
Get-ZNSegmentOutboundAllowRule
```

```output
Action CreatedAt     Description Direction ExpiresAt Id                                   LocalEntityId LocalProcessesList ParentId ParentType RemoteEntityIdsList State UpdatedAt
------ ---------     ----------- --------- --------- --                                   ------------- ------------------ -------- ---------- ------------------- ----- ---------
1      1665518196557             2         0         0a1444a2-7cb7-4319-a0de-a013d6b67402 b:110002      {*}                         0          {b:120808080820}    1   
```

This cmdlet gets outbound allow rules from the environment.

### Example 2: Get a specific outbound allow rule
```powershell
 Get-ZNSegmentOutboundAllowRule -RuleId "0a1444a2-7cb7-4319-a0de-a013d6b67402"
```

```output
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
ItemAction                 : 1
ItemCreatedAt              : 1665518196557
ItemDescription            : 
ItemDirection              : 2
ItemExpiresAt              : 0
ItemId                     : 0a1444a2-7cb7-4319-a0de-a013d6b67402
ItemLocalEntityId          : b:110002
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Segment.Models.PortsListItem}
ItemRemoteEntityIdsList    : {b:120808080820}
ItemRemoteEntityInfos      : {8.8.8.8}
ItemState                  : 1
ItemUpdatedAt              : 
LocalEntityInfoId          : b:110002
LocalEntityInfoName        : All protected assets
```

Get a specific outbound allow rule.

