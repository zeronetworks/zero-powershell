### Example 1: Remove an asset from identity segmentation
```powershell
$asset = Search-ZNAsset -Fqdn dc01.posh.local                      
Unprotect-ZNAssetIdentitySegment -AssetId $asset
```

```output

```

This cmdlet removes an asset from identity segmentation.

### Example 2: Remove multiple assets from identity segmentation
```powershell
Unprotect-ZNAssetIdentitySegment -Items @("assetid","assetId")
```

```output

```

This cmdlet removes multiple assets from identity segmentation.