### Example 1: Extend network learning for several assets
```powershell
Invoke-ZNAssetNetworkExtendQueue -Items @('a:a:JZgxbNLi','a:d:9w92xWqF') -ExtendByDays 30
```

```output

```

This cmdlet will extend network learning for several assets.

### Example 2: Extend network learning for an asset
```powershell
$asset = Search-ZNAsset -Fqdn wc01.posh.local
Invoke-ZNAssetNetworkExtendQueue -AssetId $asset -ExtendByDays 30
```

```output

```

This cmdlet will extend network learning for a specific asset.