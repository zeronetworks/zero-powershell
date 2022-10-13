### Example 1: Remove an outbound allow rule
```powershell
$rule = Get-ZNSegmentOutboundAllowRule | where {$_.Description -eq "Test Rule"}
Remove-ZNSegmentOutboundAllowRule -RuleId $rule.Id
```

```output

```

This cmdlet deletes an outbound allow rule from the environment.