### Example 1: Remove an inbound allow rule
```powershell
$rule = Get-ZNInboundAllowRule | where {$_.Description -eq "Test Rule A"}
Remove-ZNInboundAllowRule -RuleId $rule.Id
```

```output

```

This cmdlet deletes an inbound allow rule from the environment.