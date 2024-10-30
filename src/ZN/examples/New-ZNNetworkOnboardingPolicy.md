### Example 1: Create an Network onboarding policy
```powershell
New-ZNNetworkOnboardingPolicy -GroupId g:s:03669ce2 -ExistingMembersLearningDays 30 -NewMembersLearningDays 30 -Enabled:$false
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
ItemEnforceBlocks                    : False
ItemExistingMembersLearningDays      : 30
ItemGroupId                          : g:s:03669ce2
ItemId                               : a36d67e7-8497-4a31-a39b-24e73a6b5c78
ItemInitialProtectAt                 : 1728665476730
ItemNewMembersLearningDays           : 30
ItemPolicyType                       : 1
ItemUpdatedAt                        : 
```

This cmdlet creates an network onboarding learning policy