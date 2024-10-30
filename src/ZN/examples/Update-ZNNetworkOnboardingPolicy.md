### Example 1: Update Network onboarding policies
```powershell
Update-ZNNetworkOnboardingPolicy -OnboardingPolicyId "a36d67e7-8497-4a31-a39b-24e73a6b5c78" -ExistingMembersLearningDays 60 -NewMembersLearningDays 60
```

```output
CreatedByEmail                       : 
CreatedByEnforcementSource           : 4
CreatedById                          : m:ea53c6e1d0072c5974ceec597b64989274b7ba5f
CreatedByName                        : powershell
CreatedByUserRole                    : 4
GroupInfoDomain                      : system
GroupInfoGuid                        : 56779f63-9c03-4c5a-9312-cfc7964fc827
GroupInfoHasIdentityProtectionPolicy : False
GroupInfoHasNetworkProtectionPolicy  : False
GroupInfoId                          : g:s:03669ce2
GroupInfoName                        : Servers
ItemCreatedAt                        : 1726073476732
ItemDescription                      : 
ItemEnabled                          : True
ItemEnforceBlocks                    : False
ItemExistingMembersLearningDays      : 60
ItemGroupId                          : g:s:03669ce2
ItemId                               : a36d67e7-8497-4a31-a39b-24e73a6b5c78
ItemInitialProtectAt                 : 1731355186489
ItemNewMembersLearningDays           : 60
ItemPolicyType                       : 1
ItemUpdatedAt                        : 1726169614643
```

This cmdlet updates an Network onboarding policy.
