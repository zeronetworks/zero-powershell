### Example 1: List MFA methods for outbound MFA policy for a specific asset.
```powershell
$asset = Search-ZNAsset -Fqdn dc01.posh.local
Get-ZNAssetMfaOutboundPoliciesMfamethod -AssetId $asset        
```

```output
1
2
4
5
```

This cmdlet lists the MFA methods for an outbound MFA policy for a specific asset.
