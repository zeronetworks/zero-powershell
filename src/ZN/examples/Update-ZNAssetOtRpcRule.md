### Example 1: Update a rpc rule for an asset
```powershell
$asset = (Search-ZNAsset -fqdn switch01).AssetID
$rule = (Get-ZNAssetOtRpcRule -Asset $asset).Items[0]
$rule.Description = "Updated Description"
Update-ZNAssetOtRpcRule -AssetId $asset -RuleId $rule.id -Description $rule.description
```

```output
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
ItemAction                 : 1
ItemCreatedAt              : 1709859720473
ItemDescription            : Updated Description
ItemExcludedAssetIdsList   : {}
ItemExcludedAssetInfos     : 
ItemExpiresAt              : 0
ItemId                     : 185a8205-c659-4c2f-baef-6ca2c61ea2dd
ItemInterfaceUuidsList     : {}
ItemLocalAssetId           : b:113002
ItemOpNumbersList          : {}
ItemParentId               : 
ItemParentType             : 0
ItemProtocolsList          : {}
ItemRemoteAssetIdsList     : {a:t:itN4uaLX}
ItemRemoteAssetInfos       : 
ItemRuleClass              : 2
ItemState                  : 1
ItemUserIdsList            : {b:111001}
ItemUserInfos              : 
LocalAssetInfoId           : 
LocalAssetInfoName         : 
UpdatedById                : m:ea53c6e1d0072c5974ceec597b64989274b7ba5f
UpdatedByName              : powershell
```

This cmdlet updates a rpc rule for an asset.
