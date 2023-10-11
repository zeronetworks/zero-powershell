### Example 1: Delete an asset manager from an asset
```powershell
$asset = Search-ZNAsset -Fqdn wc01.posh.local
Remove-ZNAssetManager -AssetId $asset -GroupOrUserId "u:a:Tolw5kf6"

```

This cmdlet deletes and asset manager from an asset.
