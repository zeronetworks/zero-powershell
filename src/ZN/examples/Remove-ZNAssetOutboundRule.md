### Example 1: Delete outbound rule
```powershell
$asset = (Search-ZNAsset -Fqdn wc01.posh.local).AssetId
Remove-ZNAssetOutboundRule -AssetId $asset -RuleId 724697fa-2db4-4330-b3f0-b157d2e23da3
```

```output

```

This cmdlet deletes an outbound rule.