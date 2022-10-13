### Example 1: Remove an inbound block rule
```powershell
$rule = Get-ZNSegmentInboundBlockRule | where {$_.Description -eq "Test Rule"}
Remove-ZNSegmentInboundBlockRule -RuleId $rule.Id
```

```output

```

This cmdlet deletes an inbound block rule from the environment.