### Example 1: Enable identity learning for several assets
```powershell
Invoke-ZNAssetIdentityQueue -Items @('a:a:JZgxbNLi','a:d:9w92xWqF') -QueueDays 30
```

```output

```

This cmdlet will enable identity learning for several assets.

### Example 2: Enable identity learning for an asset
```powershell
$asset = Search-ZNAsset -Fqdn wc01.posh.local
Invoke-ZNAssetIdentityQueue -AssetId $asset -QueueDays 30
```

```output

```

This cmdlet will enable identity learning for a specific asset.