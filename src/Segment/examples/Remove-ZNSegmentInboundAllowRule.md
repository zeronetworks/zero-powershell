### Example 1: Remove an inbound allow rule
```powershell
$rule = Get-ZNSegmentInboundAllowRule | where {$_.Description -eq "Test Rule A"}
Remove-ZNSegmentInboundAllowRule -RuleId $rule.Id
```

```output

```

This cmdlet deletes an inbound allow rule from the environment.