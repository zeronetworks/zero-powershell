### Example 1: List inactive users
```powershell
(Get-ZNUsersInactive).Items
```

```output
AddedAt             : 
AddedBy             : 
ClassifiedById      : 1f352ed0-86f1-454f-90a5-592c197c8000
ClassifiedByName    : Zero Networks
CreatedAt           : 1702251607249
DistinguishedName   : CN=zSvcAcct3,CN=Users,DC=posh,DC=local
Domain              : posh.local
Email               : 
FirstName           : 
Guid                : 13bcfd10-6848-441f-85da-b7a548d68cf8
Id                  : u:a:Hk7V9Fp7
JobTitle            : 
LastLogonReplicated : 
LastName            : 
Name                : zSvcAcct3 (inactive)
OfficePhone         : 
Phone               : 
PrincipalName       : POSH\zSvcAcct3
ProtectAt           : 
ProtectedAt         : 
ProtectionState     : 1
Role                : 3
Sid                 : S-1-5-21-4035814016-3211323426-385196088-1111
Source              : 3
UserPrincipleName   : 
UserType            : 3
```

This cmdlet will list the inactive users.
