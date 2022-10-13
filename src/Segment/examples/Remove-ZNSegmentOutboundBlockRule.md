### Example 1: Remove an outbound block rule
```powershell
$rule = Get-ZNSegmentOutboundBlockRule | where {$_.Description -eq "Test Rule"}
Remove-ZNSegmentOutboundBlockRule -RuleId $rule.Id
```

```output

```

This cmdlet deletes an outbound block rule from the environment.