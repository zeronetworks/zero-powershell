### Example 1: Update an identity rule
```powershell
$asset = Search-ZNAsset -Fqdn dc01.posh.local
Update-ZNAssetIdentityRule -AssetId $asset -RuleId 4e080155-63ca-4db4-9f8a-a02fc0d1eba3 -IdentityProtectionCategoryList @(1,5)
```

```output

```

This cmdlet updates an identity rule.