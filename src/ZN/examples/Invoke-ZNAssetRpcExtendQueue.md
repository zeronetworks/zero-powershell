### Example 1: Extend RPC learning for assets
```powershell
$asset = Search-ZNAsset -Fqdn dc01.posh.local
Invoke-ZNAssetRpcExtendQueue -Items @($asset.AssetId) -ExtendByDays 14
```

```output

```

This cmdlet extends RPC learning for assets.
