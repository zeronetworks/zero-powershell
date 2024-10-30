### Example 1: List group candidates for adding a group to
```powershell
Get-ZNGroupMemberOfGroupCandidate -GroupId g:t:01669ce2 -GroupType tag
```

```output
Id           Name
--           ----
g:c:vcLDMdYI ProtectionPolicy
```

This cmdlet lists group candidates that a group can be added to.