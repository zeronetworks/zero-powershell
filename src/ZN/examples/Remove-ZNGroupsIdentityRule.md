### Example 1: Delete identity rule
```powershell
$group = (Get-ZNGroup -Search "domain controllers").Items | where {$_.Id -like "g:t:*"}
Remove-ZNGroupsIdentityRule -GroupId $group.id -GroupType tag -RuleId 724697fa-2db4-4330-b3f0-b157d2e23da3
```

```output

```

This cmdlet deletes an identity rule.