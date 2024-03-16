### Example 1: Remove asset from tag group
```powershell
group = Get-ZNGroup -Search "Network scanners"
Remove-ZNTagGroupsMember -GroupId $group.Id -MembersId 'a:a:OtfLGUBq'
```

```output

```

This cmdlet removes an asset from a group.
