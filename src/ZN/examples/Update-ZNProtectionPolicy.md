### Example 1: Update a protection policy
```powershell
$pp = Get-ZNProtectionPolicy | where {$_.GroupId -eq "g:t:01276c2c"}
Update-ZNProtectionPolicy -ProtectionPolicyId $pp.Id -MinQueueDays 30
CreatedByEnforcementSource   : 4
CreatedById                  : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName                : Zero Networks
CreatedByUserRole            : 1
GroupInfoDomain              : tag
GroupInfoHasProtectionPolicy : False
GroupInfoId                  : g:t:01276c2c
GroupInfoName                : Domain controllers
ItemCreatedAt                : 1665679791212
ItemGroupId                  : g:t:01276c2c
ItemId                       : 8221cd9a-7de5-4915-b8e5-b46d8cc96e49
ItemInitialProtectAt         : 1668272400000
ItemMinQueueDays             : 30
ItemUpdatedAt                : 1665680065342
```

This cmdlet will update a protection policy for the environment.
