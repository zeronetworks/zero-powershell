### Example 1: Check if an asset is ready for un-segmenting
```powershell
$asset = Search-ZNAsset -Fqdn wc01.posh.local
Test-ZNAssetUnprotect -AssetId $asset

0
```
This cmdlet tests if an asset is ready for un-segmenting.  1 is ready.
