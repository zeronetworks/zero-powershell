### Example 1: Reject a pending outbound allow rule
```powershell
Deny-ZNOutboundAllowRuleReview -RuleId 6c468ed5-ca0e-463e-8cc6-331ae2fa7990 -Reason MissingPortorProcess

```

This cmdlet rejects a pending rule review for outbound allow rules.
