### Example 1: Add an asset to learning
```powershell
$assetId = Search-ZNAsset -Fqdn ls01.posh.local
Invoke-ZNAssetsQueueAsset -AssetId $assetId -QueueDays 14
```

```output

```

This cmdlet adds an asset to learning.
