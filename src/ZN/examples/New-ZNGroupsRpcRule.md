### Example 1: Create a RPC rule for a specific asset
```powershell
New-ZNGroupsRpcRule -GroupType tag -GroupId 'g:t:01669ce2' -Action 1 -Description "New RPC Rule" -ExcludedAssetIdsList @() -InterfaceUuidsList @() -LocalAssetId 'g:t:01669ce2' -OpNumbersList @() -ProtocolsList @() -RemoteAssetIdsList @('b:110001') -State 1 -UserIdsList @('b:111001')
```

```output
CreatedByEnforcementSource : 6
CreatedById                : m:ea53c6e1d0072c5974ceec597b64989274b7ba5f
CreatedByName              : powershell
CreatedByUserRole          : 4
ItemAction                 : 1
ItemCreatedAt              : 1708008427013
ItemDescription            : New RPC Rule
ItemExcludedAssetIdsList   : {}
ItemExcludedAssetInfos     : 
ItemExpiresAt              : 0
ItemId                     : 098dc1d0-91e8-4602-93c5-687ba860a877
ItemInterfaceUuidsList     : {}
ItemLocalAssetId           : g:t:01669ce2
ItemOpNumbersList          : {}
ItemParentId               : 
ItemParentType             : 0
ItemProtocolsList          : {}
ItemRemoteAssetIdsList     : {b:110001}
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

This cmdlet creates a RPC rule for a specific group.
