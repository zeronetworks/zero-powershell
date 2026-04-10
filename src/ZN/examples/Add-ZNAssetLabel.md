### Example 1: Add a label to an asset
```powershell
$asset = Search-ZNAsset -Fqdn wc01.posh.local
Add-ZNAssetLabel -AssetId $asset.AssetId -Labels @(@{"key"="Label";"value"="NewValue"})
```

```output
AffectedEntities
----------------
               1
```

This cmdlet adds a label to an asset.
