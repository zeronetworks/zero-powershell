### Example 1: Delete outbound OT rule
```powershell
$asset = (Search-ZNAsset -Fqdn otv2.posh.local).AssetId
Remove-ZNAssetOutboundOtRule -RuleId R:s:FCjfp45I -AssetId $asset
```

```output

```

This cmdlet deletes an outbound OT rule.
