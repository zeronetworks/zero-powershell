### Example 1: Test an asset is ready for segmentation
```powershell
Search-ZNAsset -Fqdn WIN7.zero.labs
Test-ZNAssetsProtection -Items "a:a:5wiknOhs"
```

```output
1
```

This cmdlet will test if an asset is ready for segmentation
