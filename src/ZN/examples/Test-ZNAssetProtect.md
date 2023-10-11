### Example 1: Check if an asset is ready for segmentation
```powershell
$asset = Search-ZNAsset -Fqdn wc01.posh.local
Test-ZNAssetProtect -AssetId $asset

1
```
This cmdlet tests if an asset is ready for segmentation.  1 is ready.
