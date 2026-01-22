### Example 1: Validate asset for Network unsegmentation
```powershell
$asset = Search-ZNAsset -fqdn dc01.posh.local
test-znAssetNetworkSegmentUnprotect -AssetId $asset.AssetId
```

```output
AffectedAssetsCount
-------------------
                  1
```

This cmdlet validates if an asset is suitable for Network unsegmentation.

### Example 2: Validate assets for Network unsegmentation
```powershell
test-znAssetNetworkSegmentUnprotect -Items @($asset.AssetId)
```

```output
AffectedAssetsCount
-------------------
                  1
```

This cmdlet validates if an assets is suitable for Network unsegmentation.


