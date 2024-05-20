### Example 1: List Identity MFA policies
```powershell
(Get-ZNMfaIdentityPolicy).Items
```

```output
CreatedAt                           : 1711982793191
CreatedByEmail                      : 
CreatedByEnforcementSource          : 5
CreatedById                         : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName                       : Zero Networks
CreatedByUserRole                   : 1
Description                         : 
DstAssetId                          : g:t:01669ce2
DstEntityInfoId                     : 
DstEntityInfoName                   : 
ExcludedDstAssetIdsList             : {}
ExcludedSrcAssetIdsList             : {}
ExcludedSrcAssetInfos               : {}
ExtraIdentityProtectionCategoryList : {}
FallbackToSingleLoggedOnUser        : False
Id                                  : 5b0b1349-1714-4a38-ba07-c32a0957ed3b
IdentityProtectionCategoryList      : {5}
InnerId                             : 
MfaMethodsList                      : {2, 4}
OverrideBuiltins                    : False
RuleDuration                        : 6
SrcAssetIdsList                     : {b:110001}
SrcAssetInfos                       : {Any asset}
SrcUserIdsList                      : {g:a:3U1Z38mF}
SrcUserInfos                        : {Domain Admins}
State                               : 1
UpdatedAt                           : 1712058796790
UpdatedById                         : 1f352ed0-86f1-454f-90a5-592c197c8000
UpdatedByName                       : Zero Networks
```

This cmdlet lists Identity MFA policies.

### Example 2: Get Identity MFA policy
```powershell
Get-ZNMfaIdentityPolicy -ReactivePolicyId 5b0b1349-1714-4a38-ba07-c32a0957ed3b
```

```output
CreatedByEmail                          : 
CreatedByEnforcementSource              : 5
CreatedById                             : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName                           : Zero Networks
CreatedByUserRole                       : 1
DstEntityInfoId                         : 
DstEntityInfoName                       : 
ItemCreatedAt                           : 1711982793191
ItemDescription                         : 
ItemDstAssetId                          : g:t:01669ce2
ItemExcludedDstAssetIdsList             : {}
ItemExcludedSrcAssetIdsList             : {}
ItemExcludedSrcAssetInfos               : {}
ItemExtraIdentityProtectionCategoryList : {}
ItemFallbackToSingleLoggedOnUser        : False
ItemId                                  : 5b0b1349-1714-4a38-ba07-c32a0957ed3b
ItemIdentityProtectionCategoryList      : {5}
ItemInnerId                             : 
ItemMfaMethodsList                      : {2, 4}
ItemOverrideBuiltins                    : False
ItemRuleDuration                        : 6
ItemSrcAssetIdsList                     : {b:110001}
ItemSrcAssetInfos                       : {Any asset}
ItemSrcUserIdsList                      : {g:a:3U1Z38mF}
ItemSrcUserInfos                        : {Domain Admins}
ItemState                               : 1
ItemUpdatedAt                           : 1712058796790
UpdatedById                             : 1f352ed0-86f1-454f-90a5-592c197c8000
UpdatedByName                           : Zero Networks
```

This cmdlet gets an Identity MFA policy.
