### Example 1: Add an asset manager to an asset
```powershell
$asset = Search-ZNAsset -Fqdn wc01.posh.local
$user = Get-ZNUser -Search test
Add-ZNAssetManager -AssetId $asset -ManagerIds @($user.Id)

```

This cmdlet adds an asset manager to an asset.