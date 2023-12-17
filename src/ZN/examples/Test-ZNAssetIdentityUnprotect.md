### Example 1: Test an asset for removal from identity segmentation
```powershell
$asset = Search-ZNAsset -Fqdn dc01.posh.local                      
Test-ZNAssetIdentityUnprotect -AssetId $asset

```

This cmdlet tests an asset for removal from identity segmentation. 0 = Not suitable, 1 = Suitable

### Example 2: Test multiple assets for removal from identity segmentation
```powershell
Test-ZNAssetIdentityUnprotect -Items @("assetid","assetId")

```

This cmdlet tests multiple assets for removal from identity segmentation.
