### Example 1: Update a rpc rule for an asset
```powershell
$asset = (Search-ZNAsset -fqdn dc01.posh.local).AssetID
$rule = (Get-ZNAssetRpcRule -Asset $asset).Items[0]
$rule.Description = "Updated Description"
Update-ZNAssetRpcRule -AssetId $asset -RuleId $rule.id -Description $rule.description
```

```output
CreatedByEnforcementSource : 6
CreatedById                : m:ea53c6e1d0072c5974ceec597b64989274b7ba5f
CreatedByName              : powershell
CreatedByUserRole          : 4
ItemAction                 : 1
ItemCreatedAt              : 1709744353362
ItemDescription            : Updated Description
ItemExcludedAssetIdsList   : {}
ItemExcludedAssetInfos     : 
ItemExpiresAt              : 0
ItemId                     : 114b8846-2594-477f-bf95-f2c57ee964dd
ItemInterfaceUuidsList     : {}
ItemLocalAssetId           : g:t:01669ce2
ItemOpNumbersList          : {}
ItemParentId               : 
ItemParentType             : 0
ItemProtocolsList          : {}
ItemRemoteAssetIdsList     : {a:t:4K05Uvvc}
ItemRemoteAssetInfos       : 
ItemRuleClass              : 1
ItemState                  : 1
ItemUserIdsList            : {b:111001}
ItemUserInfos              : 
LocalAssetInfoId           : 
LocalAssetInfoName         : 
UpdatedById                : m:ea53c6e1d0072c5974ceec597b64989274b7ba5f
UpdatedByName              : powershell
```

This cmdlet updates a rpc rule for an asset.
