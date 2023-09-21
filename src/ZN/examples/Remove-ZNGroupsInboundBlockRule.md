### Example 1: Delete inbound block rule
```powershell
$group = Get-ZNGroup -Search "Domain controllers" | where {$_.Id -like "g:t:*"}
Remove-ZNGroupsInboundBlockRule -GroupId $group.Id -GroupType tag -RuleId 64a9dbab-417f-48b4-9fcc-8334c7fd354f

```

This cmdlet deletes an inbound block rule.