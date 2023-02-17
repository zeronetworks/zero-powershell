### Example 1: Test an asset is can be removed from protection
```powershell
Test-ZNAssetsUnprotect -Items (Search-ZNAsset -Fqdn WIN7.zero.labs)
```

```output
1
```

This cmdlet will test if an asset is can be removed from segmentation. 1 is ready, 0 is not ready.
