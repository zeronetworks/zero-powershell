### Example 1: Delete outbound MFA policy
```powershell
$otasset = Get-ZNAssetsOt | where {$_.Fqdn -eq "ot1777"}
Remove-ZNAssetMfaOutboundPolicy -AssetId $otAsset.id -ReactivePolicyId 32951fee-7f70-4974-b90d-c50182bbdeb3

```

This cmdlet deletes an outbound MFA policy.