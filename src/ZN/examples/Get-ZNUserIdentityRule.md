### Example 1: List identity rules for a user
```powershell
(Get-ZNUserIdentityRule -UserId u:a:mACDNWcW).Items
```

```output
CreatedAt     Id                                   UserInfos AssetInfoName ExcludedAssetInfos IdentityProtectionCategory
                                                                                              List
---------     --                                   --------- ------------- ------------------ --------------------------
1700752866802 ff9cc79c-21b6-4363-82e1-da6bc6bbdaf0 {svc1}    dc01          {}                 {5} 
```

This cmdlet lists identity rules for a user.

### Example 2: Get an identity rule
```powershell
Get-ZNUserIdentityRule -UserId "u:a:mACDNWcW" -RuleId ff9cc79c-21b6-4363-82e1-da6bc6bbdaf0 -Debug
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
ItemAssetId                        : a:a:TeGEW52g
ItemCreatedAt                      : 1700752866802
ItemDescription                    : test
ItemExcludedAssetIdsList           : {}
ItemExcludedAssetInfos             : 
ItemExpiresAt                      : 0
ItemId                             : ff9cc79c-21b6-4363-82e1-da6bc6bbdaf0
ItemIdentityProtectionCategoryList : {5}
ItemParentId                       : 
ItemParentType                     : 0
ItemRuleclass                      : 
ItemState                          : 1
ItemUpdatedAt                      : 
ItemUserIdsList                    : {u:a:mACDNWcW}
ItemUserInfos                      : 
UpdatedByEmail                     : 
UpdatedByEnforcementSource         : 
UpdatedById                        : 
UpdatedByName                      : 
UpdatedByUserRole                  : 
```

This cmdlet gets an identity rule for a user.

