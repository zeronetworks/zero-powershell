### Example 1: Add an asset to identity segmentation
```powershell
$asset = Search-ZNAsset -Fqdn dc01.posh.local                      
Protect-ZNAssetIdentity -AssetId $asset

```

This cmdlet adds an asset to identity segmentation.

### Example 2: Add multiple assets to identity segmentation
```powershell
Protect-ZNAssetIdentity -Items @("assetid","assetId")

```

This cmdlet adds multiple assets to identity segmentation.
