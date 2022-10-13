### Example 1: List inbound block rules
```powershell
Get-ZNSegmentInboundBlockRule
```

```output
Action CreatedAt     Description Direction ExpiresAt Id                                   LocalEntityId LocalProcessesList ParentId ParentType RemoteEntityIdsList State UpdatedAt
------ ---------     ----------- --------- --------- --                                   ------------- ------------------ -------- ---------- ------------------- ----- ---------
2      1665490925245             1         0         9f3503cf-02ce-4231-b167-c9e2a2446311 a:a:cxIJepiA  {*}                         0          {a:a:5wiknOhs}      1     
```

This cmdlet gets inbound block rules from the environment.

### Example 2: Get a specific inbound block rule
```powershell
Get-ZNSegmentInboundBlockRule -RuleId "9f3503cf-02ce-4231-b167-c9e2a2446311"
```

```output
reatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
ItemAction                 : 2
ItemCreatedAt              : 1665490925245
ItemDescription            : 
ItemDirection              : 1
ItemExpiresAt              : 0
ItemId                     : 9f3503cf-02ce-4231-b167-c9e2a2446311
ItemLocalEntityId          : a:a:cxIJepiA
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Segment.Models.PortsListItem}
ItemRemoteEntityIdsList    : {a:a:5wiknOhs}
ItemRemoteEntityInfos      : {WIN7}
ItemState                  : 1
ItemUpdatedAt              : 
LocalEntityInfoId          : a:a:cxIJepiA
LocalEntityInfoName        : win8-1
```

Get a specific inbound block rule.

