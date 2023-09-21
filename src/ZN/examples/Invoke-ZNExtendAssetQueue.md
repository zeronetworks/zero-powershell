### Example 1: Extend an asset in learning
```powershell
$assetId = Search-ZNAsset -Fqdn ls01.posh.local
Invoke-ZNExtendQueueAsset -ExtendByDays 14 -Items @($assetId)

```

This cmdlet extends an asset in learning.
