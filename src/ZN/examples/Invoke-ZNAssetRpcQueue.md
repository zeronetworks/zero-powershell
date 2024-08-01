### Example 1: Add assets to RPC learning
```powershell
$asset = Search-ZNAsset -Fqdn dc01.posh.local 
Invoke-ZNAssetRpcQueue -items @($asset.AssetId) -QueueDays 14
```

```output

```

This cmdlet adds an asset to RPC Learning.
