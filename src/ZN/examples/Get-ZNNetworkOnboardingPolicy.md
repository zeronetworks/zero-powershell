### Example 1: List Network onboarding policies
```powershell
Get-ZNNetworkOnboardingPolicy 
```

```output
CreatedAt                            : 1720788122962
CreatedByEmail                       : 
CreatedByEnforcementSource           : 4
CreatedById                          : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName                        : Zero Networks
CreatedByUserRole                    : 1
Description                          : 
Enabled                              : False
EnforceBlocks                        : False
ExistingMembersLearningDays          : 60
GroupId                              : g:s:04669ce2
GroupInfoDomain                      : system
GroupInfoGuid                        : b69e53c2-cf08-47bb-a5d1-c1b1f801d54c
GroupInfoHasIdentityProtectionPolicy : False
GroupInfoHasNetworkProtectionPolicy  : False
GroupInfoId                          : g:s:04669ce2
GroupInfoName                        : Clients
Id                                   : 22c13631-c31d-4698-a875-fa1327cf01b5
InitialProtectAt                     : 1726924854503
NewMembersLearningDays               : 30
PolicyType                           : 1
UpdatedAt                            : 1721740854504
```

This cmdlet lists the network onboarding policies.