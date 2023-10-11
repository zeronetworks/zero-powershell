### Example 1: Delete an asset manager from an asset
```powershell
$otasset = Get-ZNAssetsOt | where {$_.Fqdn -eq "ot1777"}
Remove-ZNAssetOtManager -AssetId $otasset.Id -GroupOrUserId "u:a:X2inJbQY"

```

This cmdlet deletes and asset manager from an asset.
