### Example 1: Check if an asset is ready for removal from network segmentation
```powershell
$asset = Search-ZNAsset -Fqdn wc01.posh.local
Test-ZNAssetNetworkUnprotect -AssetId $asset
```

```output
1
```
This cmdlet tests if an asset is ready for removal from network segmentation.  1 is ready.