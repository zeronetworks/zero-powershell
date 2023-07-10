### Example 1: Update AI Rule Review settings
```powershell
Update-ZNSettingsAiRuleReview -RuleClassesList @(1,2,6)
```

```
1
2
6
```

This cmdlet updates the rule review settings under AI. The settings are mapped to:
1 - Trivial
2 - Permissive
3 - Privileged
6 - Preventative

