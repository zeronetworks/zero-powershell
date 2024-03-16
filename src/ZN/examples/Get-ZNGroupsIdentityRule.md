### Example 1: Get identity rules for a group
```powershell
(Get-ZNGroupsIdentityRule -GroupId g:t:018cf3ae -GroupType tag).Items
```

```output
CreatedAt     Id                                   UserInfos       AssetInfoName      ExcludedAssetInfos IdentityProtect
                                                                                                         ionCategoryList
---------     --                                   ---------       -------------      ------------------ ---------------
1700673565762 9b3b398c-e5d6-47f9-831f-617752549d1f {Domain Admins} Domain controllers {}                 {1, 5}
```

This cmdlet lists identity rules for a group.

### Example 2: Get an identity rule for a group
```powershell
Get-ZNGroupsIdentityRule -GroupId g:t:018cf3ae -GroupType tag -RuleId 9b3b398c-e5d6-47f9-831f-617752549d1f
```

```output
AssetInfoId                        : 
AssetInfoName                      : 
CreatedByEmail                     : 
CreatedByEnforcementSource         : 6
CreatedById                        : m:b12c928ed7b931203e027dfb7147356fe7824412
CreatedByName                      : powershell
CreatedByUserRole                  : 4
ItemAction                         : 1
ItemAssetId                        : g:t:018cf3ae
ItemCreatedAt                      : 1700673565762
ItemDescription                    : 
ItemExcludedAssetIdsList           : {}
ItemExcludedAssetInfos             : 
ItemExpiresAt                      : 0
ItemId                             : 9b3b398c-e5d6-47f9-831f-617752549d1f
ItemIdentityProtectionCategoryList : {1, 5}
ItemParentId                       : 
ItemParentType                     : 0
ItemRuleclass                      : 
ItemState                          : 1
ItemUpdatedAt                      : 
ItemUserIdsList                    : {g:a:kuxROJQU}
ItemUserInfos                      : 
UpdatedByEmail                     : 
UpdatedByEnforcementSource         : 
UpdatedById                        : 
UpdatedByName                      : 
UpdatedByUserRole                  : 
```

This cmdlet gets an identity rule for a group.

