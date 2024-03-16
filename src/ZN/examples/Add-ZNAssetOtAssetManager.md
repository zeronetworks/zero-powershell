### Example 1: Add an asset manager to an OT asset
```powershell
$asset = Get-ZNAssetsOt | where {$_.Fqdn -eq "test"}
$user = Get-ZNUser -Search test
Add-ZNAssetOtAssetManager -AssetId $asset.Id -ManagerIds @($user.Id)
```

```output

```

This cmdlet adds an asset manager to an OT asset.