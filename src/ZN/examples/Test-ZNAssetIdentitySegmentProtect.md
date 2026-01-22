### Example 1: Validate asset for Identity Segmentation
```powershell
$asset = Search-ZNAsset -fqdn dc01.posh.local
test-znAssetIdentitySegmentProtect -AssetId $asset.AssetId
```

```output
AffectedAssetsCount
-------------------
                  1
```

This cmdlet validates if an asset is suitable for identity segmentation.

### Example 2: Validate assets for Identity Segmentation
```powershell
test-znAssetIdentitySegmentProtect -Items @($asset.AssetId)
```

```output
AffectedAssetsCount
-------------------
                  1
```

This cmdlet validates if an assets is suitable for identity segmentation.


