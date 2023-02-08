### Example 1: Add a member to a custom group
```powershell
$cgroup = Get-ZNCustomGroup | where {$_.Name -eq "Custom Group"}
Add-ZNCustomGroupsMember -GroupId $cgroup.Id -MembersId (Search-ZNAsset -Fqdn dc.zero.labs)
```

```output

```

This cmdlet adds a member to the custom group in the environment.
