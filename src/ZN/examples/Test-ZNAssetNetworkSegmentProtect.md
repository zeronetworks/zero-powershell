### Example 1: Validate asset for Network Segmentation
```powershell
$asset = Search-ZNAsset -fqdn dc01.posh.local
test-znAssetNetworkSegmentProtect -AssetId $asset.AssetId
```

```output
AffectedAssetsCount
-------------------
                  1
```

This cmdlet validates if an asset is suitable for network segmentation.

### Example 2: Validate assets for Network Segmentation
```powershell
test-znAssetNetworkySegmentProtect -Items @($asset.AssetId)
```

```output
AffectedAssetsCount
-------------------
                  1
```

This cmdlet validates if an assets is suitable for network segmentation.


