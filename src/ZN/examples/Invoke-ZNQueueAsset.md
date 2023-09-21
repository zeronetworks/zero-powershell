### Example 1: Add an asset to learning
```powershell
$assetId = Search-ZNAsset -Fqdn ls01.posh.local
Invoke-ZNQueueAsset -QueueDays 14 -Items @($assetId)

```

This cmdlet adds an asset to learning.
