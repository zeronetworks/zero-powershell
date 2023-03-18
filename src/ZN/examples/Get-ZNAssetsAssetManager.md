### Example 1: List Asset Managers for an Asset
```powershell
PS C:\> $asset = Search-ZNAsset -Fqdn "DC01.posh.local"
PS C:\> Get-ZNAssetsAssetManager -AssetId $asset
```

```output
ManagerId    Relation
---------    --------
g:a:cai6Wuyd 3
```

This cmdlet returns a list of Asset Managers for an asset.
