### Example 1: Create a RPC rule for a specific asset
```powershell
New-ZNAssetOtRpcRule -AssetId 'a:t:gN2vxSX1' -Action 1 -Description "New RPC Rule" -ExcludedAssetIdsList @() -InterfaceUuidsList @() -LocalAssetId 'g:t:01669ce2' -OpNumbersList @() -ProtocolsList @() -RemoteAssetIdsList @('a:t:gN2vxSX1') -State 1 -UserIdsList @('b:111001')
```

```output
CreatedByEnforcementSource : 6
CreatedById                : m:ea53c6e1d0072c5974ceec597b64989274b7ba5f
CreatedByName              : powershell
CreatedByUserRole          : 4
ItemAction                 : 1
ItemCreatedAt              : 1708008268175
ItemDescription            : New RPC Rule
ItemExcludedAssetIdsList   : {}
ItemExcludedAssetInfos     : 
ItemExpiresAt              : 0
ItemId                     : 6383a8fc-ca34-44e2-b998-561db51dc55f
ItemInterfaceUuidsList     : {}
ItemLocalAssetId           : g:t:01669ce2
ItemOpNumbersList          : {}
ItemParentId               : 
ItemParentType             : 0
ItemProtocolsList          : {}
ItemRemoteAssetIdsList     : {a:t:gN2vxSX1}
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
