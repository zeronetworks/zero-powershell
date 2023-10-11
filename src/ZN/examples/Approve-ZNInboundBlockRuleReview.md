### Example 1: Approve a rule
```powershell
Approve-ZNInboundBlockRuleReview -RuleId '9d275288-4fc3-46e5-a5a0-ff0626214b87'

```

This cmdlet approves a rule pending review.

### Example 2: Approve a rule
```powershell
Approve-ZNInboundBlockRuleReview -RuleId 'e4a170be-c192-414a-9d36-380a4483583a' -Description "new description" -Reason "Other" -Details "add description"

```

This cmdlet also supports changing the rule details upon approval.
