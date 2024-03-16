### Example 1: Deny a rule for a specific asset
```powershell
$asset = Search-ZNAsset -Fqdn linux0.posh.local
Deny-ZNAssetInboundBlockRuleReview -AssetId $asset -RuleId '9d275288-4fc3-46e5-a5a0-ff0626214b87' -Reason 'RedundantRule'
```

```output

```

This cmdlet denies a rule pending review for a specific asset.
