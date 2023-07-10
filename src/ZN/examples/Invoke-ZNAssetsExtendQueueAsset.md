### Example 1: Extend an asset in learning
```powershell
$assetId = Search-ZNAsset -Fqdn ls01.posh.local
Invoke-ZNAssetsExtendQueueAsset -AssetId $assetId -ExtendByDays 14
```

```output

```

This cmdlet extends an asset in learning.
