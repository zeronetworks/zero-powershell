### Example 1: List Identity onboarding policies
```powershell
Get-ZNIdentityOnboardingPolicy 
```

```output
CreatedAt                            : 1720788060631
CreatedByEmail                       : 
CreatedByEnforcementSource           : 4
CreatedById                          : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName                        : Zero Networks
CreatedByUserRole                    : 1
Description                          : 
Enabled                              : False
EnforceBlocks                        : 
ExistingMembersLearningDays          : 60
GroupId                              : g:s:04669ce2
GroupInfoDomain                      : system
GroupInfoGuid                        : b69e53c2-cf08-47bb-a5d1-c1b1f801d54c
GroupInfoHasIdentityProtectionPolicy : False
GroupInfoHasNetworkProtectionPolicy  : False
GroupInfoId                          : g:s:04669ce2
GroupInfoName                        : Clients
Id                                   : 14cf1464-2807-490b-8009-9ce1d736fd38
InitialProtectAt                     : 1725981560665
NewMembersLearningDays               : 60
PolicyType                           : 2
UpdatedAt                            : 1720797560665
```

This cmdlet lists the identity onboarding policies.
