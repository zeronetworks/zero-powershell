### Example 1: List Service Accounts
```powershell
(Get-ZNUsersServiceAccount).Items
```

```output
ClassifiedById    : 1f352ed0-86f1-454f-90a5-592c197c8000
ClassifiedByName  : Zero Networks
CreatedAt         : 1702251607315
DistinguishedName : CN=zSvcAcct6,CN=Users,DC=posh,DC=local
Domain            : posh.local
Email             : 
FirstName         : 
Guid              : bae3a3e6-ff5a-4909-bc9b-fd4a2ae28905
Id                : u:a:lQdqKqlE
JobTitle          : 
LastLogon         : 
LastName          : 
Name              : zSvcAcct6
OfficePhone       : 
Phone             : 
PrincipalName     : POSH\zSvcAcct6
ProtectionState   : 1
Role              : 3
Sid               : S-1-5-21-4035814016-3211323426-385196088-1120
Source            : 3
UserPrincipleName : 
UserType          : 3

ClassifiedById    : 1f352ed0-86f1-454f-90a5-592c197c8000
ClassifiedByName  : Zero Networks
CreatedAt         : 1702251607945
DistinguishedName : CN=znremotemanagement,OU=ZeroNetworks,DC=posh,DC=local
Domain            : posh.local
Email             : 
FirstName         : 
Guid              : d6fdc234-0163-49a5-9466-15eece2569e4
Id                : u:a:uupJGyne
JobTitle          : 
LastLogon         : 1709211002028
LastName          : 
Name              : znremotemanagement
OfficePhone       : 
Phone             : 
PrincipalName     : POSH\znremotemanagement
ProtectionState   : 5
Role              : 3
Sid               : S-1-5-21-4035814016-3211323426-385196088-2606
Source            : 3
UserPrincipleName : 
UserType          : 3
```

This cmdlet lists service accounts.
