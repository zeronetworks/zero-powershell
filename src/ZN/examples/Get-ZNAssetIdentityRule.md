### Example 1: List asset identity rules
```powershell
$asset = Search-ZNAsset -Fqdn dc01.posh.local 
(Get-ZNAssetIdentityRule -AssetId $asset).ITems

CreatedAt     Id                                   UserInfos       AssetInfoName      ExcludedAssetInfos IdentityProtectionCategoryList ExpiresAt Rule
                                                                                                                                                  clas
                                                                                                                                                  s
---------     --                                   ---------       -------------      ------------------ ------------------------------ --------- ----
1700672773316 8f1fb334-a9bd-4037-930a-d72aee11cecb {Domain Admins} Domain controllers {}                 {1, 5}                         0
```

This cmdlet lists identity rules for an asset.

### Example 2: Get an identity rule for an asset.
```powershell
Get-ZNAssetIdentityRule -AssetId $asset -RuleId ff9cc79c-21b6-4363-82e1-da6bc6bbdaf0

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

This cmdlet gets an identity rule for an asset.

