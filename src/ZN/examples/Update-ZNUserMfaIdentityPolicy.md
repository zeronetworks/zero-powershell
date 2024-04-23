### Example 1: Update identity MFA policy
```powershell
$user = (Get-ZNMfaIdentityPoliciesSourceUserCandidate -Search "zero").items | where {$_.Name -eq "zero"}  
Update-ZNAssetMfaIdentityPolicy -UserId $user.id -ReactivePolicyId ec33049b-4e27-4f73-8f6d-8db4f5ff1e59 -Description assettest
```

```output
CreatedByEmail                          : 
CreatedByEnforcementSource              : 5
CreatedById                             : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName                           : Zero Networks
CreatedByUserRole                       : 1
DstEntityInfoId                         : 
DstEntityInfoName                       : 
ItemCreatedAt                           : 1713440556757
ItemDescription                         : assettest
ItemDstAssetId                          : b:112002
ItemExcludedDstAssetIdsList             : {}
ItemExcludedSrcAssetIdsList             : {}
ItemExcludedSrcAssetInfos               : {}
ItemExtraIdentityProtectionCategoryList : {}
ItemFallbackToSingleLoggedOnUser        : False
ItemId                                  : ec33049b-4e27-4f73-8f6d-8db4f5ff1e59
ItemIdentityProtectionCategoryList      : {5}
ItemInnerId                             : 
ItemMfaMethodsList                      : {2, 4}
ItemOverrideBuiltins                    : False
ItemRuleDuration                        : 6
ItemSrcAssetIdsList                     : {b:110001}
ItemSrcAssetInfos                       : {Any asset}
ItemSrcUserIdsList                      : {b:111001}
ItemSrcUserInfos                        : {Any user}
ItemState                               : 1
ItemUpdatedAt                           : 1713469629046
UpdatedById                             : m:ea53c6e1d0072c5974ceec597b64989274b7ba5f
UpdatedByName                           : powershell
```

This cmdlet updates an identity MFA policy.