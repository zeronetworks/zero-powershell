### Example 1: Delete inbound OT rule
```powershell
$asset = (Search-ZNAsset -Fqdn dc01.posh.local).AssetId
Remove-ZNAssetInboundOtRule -RuleId R:s:MTzR01fZ -AssetId $asset
```

```output

```

This cmdlet deletes an inbound OT rule.
