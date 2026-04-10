### Example 1: List candidates for source users in a Connect policy
```powershell
(Get-ZNConnectPoliciesSourceUsersCandidate).Items
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

Domain                      : OT/IoT
Email                       : 
Guid                        : 89fb6426-1f11-47fa-ae5f-708c0e501585
HasIdentityProtectionPolicy : False
HasNetworkProtectionPolicy  : False
Id                          : g:o:1Lda83cd
Name                        : 3D Printer
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

Domain                      : OT/IoT
Email                       : 
Guid                        : 9f8c5ee7-d67f-4319-9c19-d583095c5520
HasIdentityProtectionPolicy : False
HasNetworkProtectionPolicy  : False
Id                          : g:o:1Kda83cd
Name                        : Access control devices
Sid                         : 
UserType                    : 
```

This cmdlet list source user candiadtes for a Connect polucy.
