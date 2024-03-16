### Example 1: Get asset managers for an asset
```powershell
$asset = Search-ZNAsset -Fqdn dc01.posh.local
Get-ZNAssetManager -AssetId $asset
```

```output
ManagerId    Relation
---------    --------
g:a:cai6Wuyd 3
```

This cmdlet lists asset managers for an asset.

