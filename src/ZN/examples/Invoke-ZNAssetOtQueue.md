### Example 1: Extend learning for an OT asset
```powershell
$asset = Search-ZNAsset -Fqdn ot1777
Invoke-ZNAssetOtExtendQueue -AssetId $asset -ExtendByDays 30
```

This cmdlet will extend learning for a specific OT asset.
