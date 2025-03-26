### Example 1: Delete a Outbound OT rule
```powershell
$group = (Get-ZNGroup -Search Cameras).Items | where {$_.Name -eq "Cameras"} 
Remove-ZNGroupsOutboundOtRule -GroupType ot -GroupId $group.id -RuleId 603f5007-bc17-4095-9be5-3aa41cffeb1d
```

```output

```

This cmdlet deletes an Outbound OT rule.
