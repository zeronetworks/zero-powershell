### Example 1: Create Identity Segmentation Policy
```powershell
$group = (Get-ZNGroup -Search servers).Items | where {$_.Domain -eq "system" -and $_.Name -eq "Servers"}
New-ZNSettingsIdentityProtectionPolicy -ExistingMembersLearningDays 30 -GroupId $group.id -NewMembersLearningDays 30 -Enabled:$false
```

```output
CreatedByEmail                  : 
CreatedByEnforcementSource      : 6
CreatedById                     : m:ea53c6e1d0072c5974ceec597b64989274b7ba5f
CreatedByName                   : powershell
CreatedByUserRole               : 4
GroupInfoDomain                 : system
GroupInfoGuid                   : 56779f63-9c03-4c5a-9312-cfc7964fc827
GroupInfoHasProtectionPolicy    : 
GroupInfoId                     : g:s:03669ce2
GroupInfoName                   : Servers
ItemCreatedAt                   : -62135596800000
ItemDescription                 : 
ItemEnabled                     : False
ItemExistingMembersLearningDays : 30
ItemGroupId                     : g:s:03669ce2
ItemId                          : 64f775d3-7c87-46a4-ac3c-8a21d340a645
ItemInitialProtectAt            : 1723380436341
ItemNewMembersLearningDays      : 30
ItemUpdatedAt                   : 
```

This cmdlet creates a new Identity segmentation policy.
