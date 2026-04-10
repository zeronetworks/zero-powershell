### Example 1: List source user candiates
```powershell
(Get-ZNInternalAccessPolicySourceUserCandidate).Items
```

```output
Domain                      : 
Email                       : 
Guid                        : 
HasIdentityProtectionPolicy : 
HasNetworkProtectionPolicy  : 
Id                          : b:111001
Name                        : Any user
Sid                         : 
UserType                    : 

Domain                      : posh.local
Email                       : 
Guid                        : e45b0e81-3f2a-4529-af87-c77fedc49429
HasIdentityProtectionPolicy : False
HasNetworkProtectionPolicy  : False
Id                          : g:a:5C0h1yd5
Name                        : Access Control Assistance Operators
Sid                         : S-1-5-32-579
UserType                    : 
```

This cmdlet lists source user candidates for an Internal Access Policy.
