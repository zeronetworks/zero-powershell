### Example 1: Get a groups member of
```powershell
Get-ZNGroupMemberOf -GroupId g:c:gP9POclU
```

```output
CreatedAt     Description DirectMembersCount Domain Guid                                 HasProtectionPolicy Id           Name    Role
---------     ----------- ------------------ ------ ----                                 ------------------- --           ----    ----
1675962079610 test3       4                  custom 1ed72a4a-8777-4cb8-86bf-4479df0179cf False               g:c:DtglBTHi NewName 3  
```

This cmdlet gets the groups a group is a member of
