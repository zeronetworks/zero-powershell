### Example 1: Delete inbound allow rule
```powershell
$asset = Search-ZNAsset -Fqdn wc01.posh.local
Remove-ZNAssetInboundAllowRule -AssetId $asset -RuleId 724697fa-2db4-4330-b3f0-b157d2e23da3
```

```output

```

This cmdlet deletes an inbound allow rule.