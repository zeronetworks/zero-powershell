### Example 1: Update Identity onboarding policies
```powershell
Update-ZNIdentityOnboardingPolicy -OnboardingPolicyId "d7915c97-20ea-4639-852d-13cb3d5e228e" -ExistingMembersLearningDays 60 -NewMembersLearningDays 60
```

```output
CreatedByEmail                       : 
CreatedByEnforcementSource           : 4
CreatedById                          : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName                        : Zero Networks
CreatedByUserRole                    : 1
GroupInfoDomain                      : system
GroupInfoGuid                        : 56779f63-9c03-4c5a-9312-cfc7964fc827
GroupInfoHasIdentityProtectionPolicy : False
GroupInfoHasNetworkProtectionPolicy  : False
GroupInfoId                          : g:s:03669ce2
GroupInfoName                        : Servers
ItemCreatedAt                        : 1726166871674
ItemDescription                      : 
ItemEnabled                          : True
ItemEnforceBlocks                    : 
ItemExistingMembersLearningDays      : 60
ItemGroupId                          : g:s:03669ce2
ItemId                               : d7915c97-20ea-4639-852d-13cb3d5e228e
ItemInitialProtectAt                 : 1731355076896
ItemNewMembersLearningDays           : 60
ItemPolicyType                       : 2
ItemUpdatedAt                        : 1726169643518
```

This cmdlet updates an identity onboarding policy.
