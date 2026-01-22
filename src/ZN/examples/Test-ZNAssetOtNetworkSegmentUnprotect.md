### Example 1: Test OT asset for network unsegment
```powershell
$asset = Search-ZNAsset -fqdn poshotv1.posh.local
Test-ZNAssetOtNetworkSegmentUnprotect -AssetId $asset.AssetId
```

```output
AffectedAssetsCount
-------------------
                  0
```

This cmdlet validates if an OT assets is suitable for Network unsegmentation.
