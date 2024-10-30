### Example 1: Create an Identity onboarding policy
```powershell
New-ZNIdentityOnboardingPolicy -GroupId g:s:03669ce2 -ExistingMembersLearningDays 30 -NewMembersLearningDays 30 -Enabled:$false
```

```output
CreatedByEmail                       : 
CreatedByEnforcementSource           : 6
CreatedById                          : m:ea53c6e1d0072c5974ceec597b64989274b7ba5f
CreatedByName                        : powershell
CreatedByUserRole                    : 4
GroupInfoDomain                      : system
GroupInfoGuid                        : 56779f63-9c03-4c5a-9312-cfc7964fc827
GroupInfoHasIdentityProtectionPolicy : False
GroupInfoHasNetworkProtectionPolicy  : False
GroupInfoId                          : g:s:03669ce2
GroupInfoName                        : Servers
ItemCreatedAt                        : -62135596800000
ItemDescription                      : 
ItemEnabled                          : False
ItemEnforceBlocks                    : 
ItemExistingMembersLearningDays      : 30
ItemGroupId                          : g:s:03669ce2
ItemId                               : 97fa4e50-c665-44e9-8261-d07c543d9d80
ItemInitialProtectAt                 : 1728665381822
ItemNewMembersLearningDays           : 30
ItemPolicyType                       : 2
ItemUpdatedAt                        : 
```

This cmdlet creates an identity onboarding learning policy