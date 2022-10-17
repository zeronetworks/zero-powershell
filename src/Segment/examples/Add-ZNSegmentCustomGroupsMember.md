### Example 1: Add a member to a custom group
```powershell
$cgroup = Get-ZNSegmentCustomGroup | where {$_.Name -eq "test"}
Add-ZNSegmentCustomGroupsMember -GroupId $cgroup.Id -MembersId (Search-ZNSegmentAsset -Fqdn linuxserver.zero.labs)
```

```output

```

This cmdlet adds a member to the custom group in the environment.
