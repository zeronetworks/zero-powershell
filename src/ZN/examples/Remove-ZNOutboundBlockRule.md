### Example 1: Remove an outbound block rule
```powershell
$rule = Get-ZNOutboundBlockRule | where {$_.Description -eq "Test Rule"}
Remove-ZNOutboundBlockRule -RuleId $rule.Id
```

```output

```

This cmdlet deletes an outbound block rule from the environment.