### Example 1: Update Identity segmentation policy
```powershell
$policy = Get-ZNSettingsIdentityProtectionPolicy | where {$_.Id -eq "14cf1464-2807-490b-8009-9ce1d736fd38"}
Update-ZNSettingsIdentityProtectionPolicy -ProtectionPolicyId $policy.Id -Enabled:$policy.Enabled -ExistingMembersLearningDays 60 -NewMembersLearningDays 60 -PolicyType $policy.PolicyType
```

```output
CreatedByEmail                       : 
CreatedByEnforcementSource           : 4
CreatedById                          : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName                        : Zero Networks
CreatedByUserRole                    : 1
GroupInfoDomain                      : system
GroupInfoGuid                        : b69e53c2-cf08-47bb-a5d1-c1b1f801d54c
GroupInfoHasIdentityProtectionPolicy : False
GroupInfoHasNetworkProtectionPolicy  : False
GroupInfoId                          : g:s:04669ce2
GroupInfoName                        : Clients
ItemCreatedAt                        : 1720788060631
ItemDescription                      : 
ItemEnabled                          : False
ItemEnforceBlocks                    : 
ItemExistingMembersLearningDays      : 60
ItemGroupId                          : g:s:04669ce2
ItemId                               : 14cf1464-2807-490b-8009-9ce1d736fd38
ItemInitialProtectAt                 : 1725981560665
ItemNewMembersLearningDays           : 60
ItemPolicyType                       : 2
ItemUpdatedAt                        : 1720788060631
```

This cmdlet updates an Identity segmentation policy.
