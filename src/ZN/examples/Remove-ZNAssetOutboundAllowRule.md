### Example 1: Delete outbound allow rule
```powershell
$asset = Search-ZNAsset -Fqdn wc01.posh.local
Remove-ZNAssetOutboundAllowRule -AssetId $asset -RuleId 2a14c6de-473d-4e29-b518-c0fe8853a581
```

```output

```

This cmdlet deletes an outbound allow rule.