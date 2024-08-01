### Example 1: Extend identity learning for several assets
```powershell
Invoke-ZNAssetIdentityExtendQueue -Items @('a:a:JZgxbNLi','a:d:9w92xWqF') -ExtendByDays 30
```

```output

```

This cmdlet will extend identity learning for several assets.

### Example 2: Extend identity learning for an asset
```powershell
$asset = Search-ZNAsset -Fqdn wc01.posh.local
Invoke-ZNAssetIdentityExtendQueue -AssetId $asset -ExtendByDays 30
```

```output

```

This cmdlet will extend identity learning for a specific asset.