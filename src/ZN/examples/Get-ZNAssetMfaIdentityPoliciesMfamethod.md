### Example 1: Get Identity MFA Methods
```powershell
$asset = Search-ZNAsset -Fqdn dc01.posh.local
Get-ZNAssetMfaIdentityPoliciesMfamethod -AssetId $asset.AssetId
```

```output
2
4
5
```

This cmdlet lists MFA methods for Identity MFA.
