### Example 1: Change asset OS type.
```powershell
$asset = Search-ZNAsset -Fqdn linux0.posh.local                
Update-ZNOSType -AssetIds @($asset.AssetId) -OSType 2
```

```output

```

This cmdlet updates the OS Type for the asset.
