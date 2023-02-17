### Example 1: Test an asset is ready for segmentation
```powershell
Test-ZNAssetsProtection -Items (Search-ZNAsset -Fqdn WIN7.zero.labs)
```

```output
1
```

This cmdlet will test if an asset is ready for segmentation. 1 is ready, 0 is not ready.
