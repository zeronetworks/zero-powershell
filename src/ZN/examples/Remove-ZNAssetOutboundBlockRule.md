### Example 1: Delete outbound block rule
```powershell
$asset = Search-ZNAsset -Fqdn wc01.posh.local
Remove-ZNAssetOutboundBlockRule -AssetId $asset -RuleId 4bac992e-e42d-4afe-8b66-ade66186b3e7

```

This cmdlet deletes an outbound allow rule.