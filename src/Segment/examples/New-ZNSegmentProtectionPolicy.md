### Example 1: Create a protection policy
```powershell
# There are multiple groups with Domain Controllers in the name
$group = Get-ZNSegmentADGroup -Search "Domain Controllers" | where {$_.Name -eq "Domain Controllers"}
New-ZNSegmentProtectionPolicy -GroupId $group.Id -MinQueueDays 30 -InitialQueueDays 30
```

```output

```

This cmdlet will create a new protection policy in the environment. In the above example, AD contains multiple groups with Domain Controllers in the name, PowerShell filtering can easily be used inline.
