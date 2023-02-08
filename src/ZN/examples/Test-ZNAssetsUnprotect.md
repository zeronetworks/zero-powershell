### Example 1: Test an asset is can be removed from protection
```powershell
Search-ZNAsset -Fqdn dc1.zero.labs
Test-ZNAssetsUnprotect -Items "a:a:ZgBWOMyc"
```

```output
1
```

This cmdlet will test if an asset is can be removed from segmentation.
