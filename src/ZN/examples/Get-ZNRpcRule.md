### Example 1: List RPC Rules
```powershell
(Get-ZNRpcRule).Items
```

```output
Action                     : 1
CreatedAt                  : 1708005695367
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
Description                : 
ExcludedAssetIdsList       : {}
ExcludedAssetInfos         : {}
ExpiresAt                  : 0
Id                         : 9d607d06-73cf-4ab6-a9dc-0ccf72e146f3
InterfaceUuidsList         : {}
LocalAssetId               : g:t:01669ce2
LocalAssetInfoId           : g:t:01669ce2
LocalAssetInfoName         : Domain controllers
OpNumbersList              : {}
ParentId                   : 
ParentType                 : 0
ProtocolsList              : {}
RemoteAssetIdsList         : {a:t:itN4uaLX, g:t:01669ce2}
RemoteAssetInfos           : {switch01, Domain controllers}
RuleClass                  : 1
State                      : 1
UpdatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
UpdatedByName              : Zero Networks
UserIdsList                : {b:111001}
UserInfos                  : {Any user}
```

This cmdlet lists the RPC Rules.

### Example 2: Get a RPC Rule
```powershell
Get-ZNRpcRule -RuleId '9d607d06-73cf-4ab6-a9dc-0ccf72e146f3'
```

```output
Action                     : 1
CreatedAt                  : 1708005695367
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
Description                : 
ExcludedAssetIdsList       : {}
ExcludedAssetInfos         : {}
ExpiresAt                  : 0
Id                         : 9d607d06-73cf-4ab6-a9dc-0ccf72e146f3
InterfaceUuidsList         : {}
LocalAssetId               : g:t:01669ce2
LocalAssetInfoId           : g:t:01669ce2
LocalAssetInfoName         : Domain controllers
OpNumbersList              : {}
ParentId                   : 
ParentType                 : 0
ProtocolsList              : {}
RemoteAssetIdsList         : {a:t:itN4uaLX, g:t:01669ce2}
RemoteAssetInfos           : {switch01, Domain controllers}
RuleClass                  : 1
State                      : 1
UpdatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
UpdatedByName              : Zero Networks
UserIdsList                : {b:111001}
UserInfos                  : {Any user}
```

This cmdlet gets a RPC Rule.
