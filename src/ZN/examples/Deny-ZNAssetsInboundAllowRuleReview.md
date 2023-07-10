### Example 1: Reject a pending inbound allow rule for a specific asset
```powershell
Deny-ZNAssetsInboundAllowRuleReview -AssetId a:a:OtfLGUBq -RuleId 6c468ed5-ca0e-463e-8cc6-331ae2fa7990 -Reason MissingPortorProcess
```

```output

```

This cmdlet rejects a pending rule review for inbound allow rules for a specific asset.
