### Example 1: Create an identity rule
```powershell
$asset = Search-ZNAsset -Fqdn dc01.posh.local
New-ZNAssetIdentityRule -AssetId $asset -Action 1 -AssetId1 $asset -Description "test" -IdentityProtectionCategoryList 5 -State 1 -UserIdsList @("u:a:zcpT72K8")
```

```output

```

This cmdlet creates an identity rule.
