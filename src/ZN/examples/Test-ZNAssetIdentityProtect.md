### Example 1: Test an asset for identity segmentation
```powershell
$asset = Search-ZNAsset -Fqdn dc01.posh.local                      
Test-ZNAssetIdentityProtect -AssetId $asset
```

```output

```

This cmdlet tests an asset for identity segmentation. 0 = Not suitable, 1 = Suitable

### Example 2: Test multiple assets for identity segmentation
```powershell
Test-ZNAssetIdentityProtect -Items @("assetid","assetId")
```

```output

```

This cmdlet tests multiple assets to identity segmentation.
