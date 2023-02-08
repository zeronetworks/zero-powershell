### Example 1: Remove an outbound allow rule
```powershell
$rule = Get-ZNOutboundAllowRule | where {$_.Description -eq "Test Rule"}
Remove-ZNOutboundAllowRule -RuleId $rule.Id
```

```output

```

This cmdlet deletes an outbound allow rule from the environment.