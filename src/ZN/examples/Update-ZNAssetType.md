### Example 1: Update asset type
```powershell
$asset = (Search-ZNAsset -Fqdn ZADCOMP1.posh.local).AssetId
Update-ZNAssetType -AssetId $asset -Type 1
```

```output

```

This cmdlet updates an asset type to either client or server.