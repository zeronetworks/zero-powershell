### Example 1: Enable network learning for several assets
```powershell
Invoke-ZNAssetNetworkQueue -Items @('a:a:JZgxbNLi','a:d:9w92xWqF') -QueueDays 30
```

```output

```

This cmdlet will enable network learning for several assets.

### Example 2: Enable network learning for an asset
```powershell
$asset = Search-ZNAsset -Fqdn wc01.posh.local
Invoke-ZNAssetNetworkQueue -AssetId $asset -QueueDays 30
```

```output

```

This cmdlet will enable network learning for a specific asset.