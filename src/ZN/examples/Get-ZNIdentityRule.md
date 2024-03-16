### Example 1: List identity rules
```powershell
(Get-ZNIdentityRule).Items
```

```output
CreatedAt     Id                                   UserInfos                    AssetInfoName        ExcludedAssetInfos
---------     --                                   ---------                    -------------        ------------------
1700752866802 ff9cc79c-21b6-4363-82e1-da6bc6bbdaf0 {svc1}                       dc01                 {}                
1700673565762 9b3b398c-e5d6-47f9-831f-617752549d1f {Domain Admins}              Domain controllers   {}                
1700159708447 01e1aa45-d6e0-41c5-a867-a95d5062ed5f {Segmented service accounts} All segmented assets {} 
```

This cmdlet lists identity rules.

### Example 2: Get an identity rule
```powershell
Get-ZNIdentityRule -RuleId ff9cc79c-21b6-4363-82e1-da6bc6bbdaf0
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

This cmdlet gets an identity rule.
