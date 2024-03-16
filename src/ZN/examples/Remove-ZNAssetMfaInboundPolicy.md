### Example 1: Delete inbound MFA policy
```powershell
$asset = Search-ZNAsset -Fqdn wc01.posh.local
Remove-ZNAssetMfaInboundPolicy -AssetId $asset -ReactivePolicyId 32883779-ccfc-42ea-90d4-a735ca622821
```

```output

```

This cmdlet deletes an inbound MFA policy.