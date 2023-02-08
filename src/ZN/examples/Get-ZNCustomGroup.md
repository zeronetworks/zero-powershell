### Example 1: List Custom Groups
```powershell
Get-ZNCustomGroup
```

```output
CreatedAt     Description        DirectMembersCount Domain Guid                                 HasProtectionPolicy Id           Name         Role Sid UpdatedAt
---------     -----------        ------------------ ------ ----                                 ------------------- --           ----         ---- --- ---------
1665444139901 Test servers group 1                  custom 68468022-0294-4c48-9e76-3074a14c22f5 False               g:c:gP9POclU Test Servers 3        1665444139901
```

This cmdlet will list custom groups for the environment.

### Example 2: Get the next page of custom groups
```powershell
Get-ZNCustomGroup -offset 10
```

```output

```

Use offset to get the next page of custom groups.


