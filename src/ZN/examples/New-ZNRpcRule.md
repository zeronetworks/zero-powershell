### Example 1: Create a RPC rule
```powershell
New-ZNRpcRule -Action 1 -Description "New RPC Rule" -ExcludedAssetIdsList @() -InterfaceUuidsList @() -LocalAssetId 'g:t:01669ce2' -OpNumbersList @() -ProtocolsList @() -RemoteAssetIdsList @('g:t:01669ce2') -State 1 -UserIdsList @('b:111001')
```

```output
reatedByEnforcementSource : 6
CreatedById                : m:ea53c6e1d0072c5974ceec597b64989274b7ba5f
CreatedByName              : powershell
CreatedByUserRole          : 4
ItemAction                 : 1
ItemCreatedAt              : 1708008175378
ItemDescription            : New RPC RuleS
ItemExcludedAssetIdsList   : {}
ItemExcludedAssetInfos     : 
ItemExpiresAt              : 0
ItemId                     : ffb4732e-073e-4fb5-b617-2e8ea2b1af31
ItemInterfaceUuidsList     : {}
ItemLocalAssetId           : g:t:01669ce2
ItemOpNumbersList          : {}
ItemParentId               : 
ItemParentType             : 0
ItemProtocolsList          : {}
ItemRemoteAssetIdsList     : {g:t:01669ce2}
ItemRemoteAssetInfos       : 
ItemRuleClass              : 1
ItemState                  : 1
ItemUserIdsList            : {b:111001}
ItemUserInfos              : 
LocalAssetInfoId           : 
LocalAssetInfoName         : 
UpdatedById                : 
UpdatedByName              : 
```

This cmdlet creates a RPC rule.
