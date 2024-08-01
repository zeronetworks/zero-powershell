### Example 1: Update Network segmentation policy
```powershell
$policy = Get-ZNSettingsNetworkProtectionPolicy | where {$_.Id -eq "22c13631-c31d-4698-a875-fa1327cf01b5"}
Update-ZNSettingsNetworkProtectionPolicy -ProtectionPolicyId $policy.Id -Enabled:$policy.Enabled -ExistingMembersLearningDays 60 -NewMembersLearningDays 60 -PolicyType $policy.PolicyType
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
ItemCreatedAt                        : 1720788122962
ItemDescription                      : 
ItemEnabled                          : False
ItemEnforceBlocks                    : False
ItemExistingMembersLearningDays      : 60
ItemGroupId                          : g:s:04669ce2
ItemId                               : 22c13631-c31d-4698-a875-fa1327cf01b5
ItemInitialProtectAt                 : 1725981649163
ItemNewMembersLearningDays           : 60
ItemPolicyType                       : 1
ItemUpdatedAt                        : 1720788122962
```

This cmdlet updates a Network segmentation policy.
