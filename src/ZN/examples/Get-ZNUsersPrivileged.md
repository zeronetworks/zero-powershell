### Example 1: List privileged users
```powershell
(Get-ZNUsersPrivileged).Items
```

```output
AddedAt             : 
AddedBy             : 
ClassifiedById      : u:a:JnQxZS6j
ClassifiedByName    : nicholas-ad
CreatedAt           : 1702251607787
DistinguishedName   : CN=zero,CN=Users,DC=posh,DC=local
Domain              : posh.local
Email               : nicholas+poshprdzero@zeronetworks.com
FirstName           : 
Guid                : a1b2e06b-f114-4ca1-a577-c0d7d138f743
Id                  : u:a:jRVryncp
JobTitle            : 
LastLogonReplicated : 
LastName            : 
Name                : zero
OfficePhone         : 
Phone               : 
PrincipalName       : POSH\zero
ProtectAt           : 
ProtectedAt         : 
ProtectionState     : 1
Role                : 1
Sid                 : S-1-5-21-4035814016-3211323426-385196088-500
Source              : 3
UserPrincipleName   : 
UserType            : 7
```

This cmdlet lists privileged users.

### Example 2: Search for a privileged user
```powershell
(Get-ZNUsersPrivileged -Search zero).Items
```

```output
AddedAt             : 
AddedBy             : 
ClassifiedById      : u:a:JnQxZS6j
ClassifiedByName    : nicholas-ad
CreatedAt           : 1702251607787
DistinguishedName   : CN=zero,CN=Users,DC=posh,DC=local
Domain              : posh.local
Email               : nicholas+poshprdzero@zeronetworks.com
FirstName           : 
Guid                : a1b2e06b-f114-4ca1-a577-c0d7d138f743
Id                  : u:a:jRVryncp
JobTitle            : 
LastLogonReplicated : 
LastName            : 
Name                : zero
OfficePhone         : 
Phone               : 
PrincipalName       : POSH\zero
ProtectAt           : 
ProtectedAt         : 
ProtectionState     : 1
Role                : 1
Sid                 : S-1-5-21-4035814016-3211323426-385196088-500
Source              : 3
UserPrincipleName   : 
UserType            : 7
```

This cmdlet can serch for a privleged user.
