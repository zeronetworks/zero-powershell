### Example 1: List AI Groups
```powershell
 Get-ZNAiGroup

Id           Name Description DirectMembersCount
--           ---- ----------- ------------------
g:i:gFMSN4Mu LS   LS Servers  1
```

This cmdlet lists AI groups.

### Example 2: Search for an AI group
```powershell
Get-ZNAiGroup -Search LS

Id           Name Description DirectMembersCount
--           ---- ----------- ------------------
g:i:gFMSN4Mu LS   LS Servers  1
```

This cmdlet can also search by name.
