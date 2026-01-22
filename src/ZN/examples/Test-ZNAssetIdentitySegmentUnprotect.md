### Example 1: Validate asset for Identity unsegmentation
```powershell
$asset = Search-ZNAsset -fqdn dc01.posh.local
test-znAssetIdentitySegmentUnprotect -AssetId $asset.AssetId
```

```output
AffectedAssetsCount
-------------------
                  1
```

This cmdlet validates if an asset is suitable for identity unsegmentation.

### Example 2: Validate assets for Identity unsegmentation
```powershell
test-znAssetIdentitySegmentUnprotect -Items @($asset.AssetId)
```

```output
AffectedAssetsCount
-------------------
                  1
```

This cmdlet validates if an assets is suitable for identity unsegmentation.


