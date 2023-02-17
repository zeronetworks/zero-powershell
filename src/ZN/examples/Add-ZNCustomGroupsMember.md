### Example 1: Add a member to a custom group
```powershell
$cgroup = Get-ZNCustomGroup | where {$_.Name -eq "test2"}
Add-ZNCustomGroupsMember -GroupId $cgroup.Id -MembersId (Search-ZNAsset -Fqdn dc1.zero.labs)
```

```output

```

This cmdlet adds a member to the custom group in the environment.
