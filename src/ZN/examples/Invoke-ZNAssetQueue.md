### Example 1: Add an asset to learning
```powershell
$asset = Search-ZNAsset -Fqdn wc01.posh.local
Invoke-ZNAssetQueue -AssetId $asset -QueueDays 30
```

This cmdlet will add an asset to learning.
