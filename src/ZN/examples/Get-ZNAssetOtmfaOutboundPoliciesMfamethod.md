### Example 1: List MFA methods for an MFA policy of an OT asset
```powershell
$otasset = Get-ZNAssetsOt | where {$_.Fqdn -eq "ot1777"}
Get-ZNAssetOtmfaOutboundPoliciesMfamethod  -AssetId $otasset.id        
```

```output
1
2
4
5
```

This cmdlet returns possible MFA methods for an MFA policy for an OT asset.
