### Example 1: List user candidates for ISPM violations
```powershell
(Get-ZNIdentityPostureUsersViolationUserCandidate).Items
```

```output
Domain                      : posh.local
Email                       : 
Guid                        : e45b0e81-3f2a-4529-af87-c77fedc49429
HasIdentityProtectionPolicy : False
HasNetworkProtectionPolicy  : False
Id                          : g:a:5C0h1yd5
Name                        : Access Control Assistance Operators
Sid                         : S-1-5-32-579
UserType                    : 

Domain                      : posh.local
Email                       : 
Guid                        : eb2f1e5b-efb4-4c72-ab26-1ffb0b370775
HasIdentityProtectionPolicy : False
HasNetworkProtectionPolicy  : False
Id                          : g:a:HJWKrlHo
Name                        : Account Operators
Sid                         : S-1-5-32-548
UserType                    : 

Domain                      : posh.local
Email                       : 
Guid                        : 3f831f70-8387-4052-86a1-35bfad5e4cd5
HasIdentityProtectionPolicy : False
HasNetworkProtectionPolicy  : False
Id                          : g:a:HBWuhIUi
Name                        : Administrators
Sid                         : S-1-5-32-544
UserType                    : 
```

This cmdlet lists user candidates for ISPM violations.
