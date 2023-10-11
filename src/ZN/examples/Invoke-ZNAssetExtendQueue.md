### Example 1: Extend learning for an asset
```powershell
$asset = Search-ZNAsset -Fqdn wc01.posh.local
Invoke-ZNAssetExtendQueue -AssetId $asset -ExtendByDays 30
```

This cmdlet will extend learning for a specific asset.
