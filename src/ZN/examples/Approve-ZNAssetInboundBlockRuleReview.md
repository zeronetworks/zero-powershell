### Example 1: Approve a rule for a specific asset
```powershell
$asset = Search-ZNAsset -Fqdn linux0.posh.local
Approve-ZNAssetInboundBlockRuleReview -AssetId $asset -RuleId '9d275288-4fc3-46e5-a5a0-ff0626214b87'
```

```output

```

This cmdlet approves a rule pending review for a specific asset.

### Example 2: Approve a rule for a specific asset with changes
```powershell
Approve-ZNAssetInboundBlockRuleReview -AssetId $asset -RuleId 'e4a170be-c192-414a-9d36-380a4483583a' -Description "new description" -Reason "Other" -Details "add description"
```

```output

```

This cmdlet also supports changing the rule details upon approval.
