### Example 1: Add an asset to identity segmentation
```powershell
$asset = Search-ZNAsset -Fqdn dc01.posh.local                      
Protect-ZNAssetIdentitySegment -AssetId $asset
```

```output

```

This cmdlet adds an asset to identity segmentation.

### Example 2: Add multiple assets to identity segmentation
```powershell
Protect-ZNAssetIdentitySegment -Items @("assetid","assetId")
```

```output

```

This cmdlet adds multiple assets to identity segmentation.