### Example 1: Create a RPC rule for a specific asset
```powershell
New-ZNAssetRpcRule -AssetId 'a:l:wEGYa0Cp' -Action 1 -Description "New RPC Rule" -ExcludedAssetIdsList @() -InterfaceUuidsList @() -LocalAssetId 'g:t:01669ce2' -OpNumbersList @() -ProtocolsList @() -RemoteAssetIdsList @('a:l:wEGYa0Cp') -State 1 -UserIdsList @('b:111001')
```

```output
CreatedByEnforcementSource : 6
CreatedById                : m:ea53c6e1d0072c5974ceec597b64989274b7ba5f
CreatedByName              : powershell
CreatedByUserRole          : 4
ItemAction                 : 1
ItemCreatedAt              : 1708008331123
ItemDescription            : New RPC Rule
ItemExcludedAssetIdsList   : {}
ItemExcludedAssetInfos     : 
ItemExpiresAt              : 0
ItemId                     : d42c390b-378c-4cb7-9db8-8f74d269d957
ItemInterfaceUuidsList     : {}
ItemLocalAssetId           : g:t:01669ce2
ItemOpNumbersList          : {}
ItemParentId               : 
ItemParentType             : 0
ItemProtocolsList          : {}
ItemRemoteAssetIdsList     : {a:l:wEGYa0Cp}
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

This cmdlet creates a RPC rule for a specific asset.
