### Example 1: Delete outbound block rule
```powershell
$group = Get-ZNGroup -Search "Domain controllers" | where {$_.Id -like "g:t:*"}
Remove-ZNGroupsOutboundBlockRule -GroupId $group.Id -GroupType tag -RuleId 64a9dbab-417f-48b4-9fcc-8334c7fd354f
```

```output

```

This cmdlet deletes an outbound block rule.