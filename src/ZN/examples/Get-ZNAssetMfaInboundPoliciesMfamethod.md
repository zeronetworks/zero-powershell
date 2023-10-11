### Example 1: List MFA methods for inbound MFA policy for a specific asset.
```powershell
$asset = Search-ZNAsset -Fqdn dc01.posh.local
Get-ZNAssetMfaInboundPoliciesMfamethod -AssetId $asset        
1
2
4
5
```

This cmdlet lists the MFA methods for an inbound MFA policy for a specific asset.
