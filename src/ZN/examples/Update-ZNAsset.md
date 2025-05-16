### Example 1: Edit an asset
```powershell
$assetId = (Search-ZNAsset -Fqdn renameLinux.posh.linux).AssetId
$random = Get-Random -Min 1 -Max 100
Update-ZNAsset -AssetId $assetId -DisplayName "renameLinxux$random" -Fqdn renameLinux.posh.linux
```

```output

```

This cmdlet edits an asset displayname and/or Fqdn.
