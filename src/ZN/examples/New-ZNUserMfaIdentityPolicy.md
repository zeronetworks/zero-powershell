### Example 1: Create an Identity MFA Policy
```powershell
$group = (Get-ZNMfaIdentityPoliciesDestinationCandidate -Search "domain controllers").items | where {$_.Id -like "g:t:*"}
$source = (Get-ZNMfaIdentityPoliciesSourceCandidate -Search "Any Asset").items
$user = (Get-ZNMfaIdentityPoliciesSourceUserCandidate -Search "zero").items | where {$_.Name -eq "zero"}
New-ZNUserMfaIdentityPolicy -UserId $user.id -DstAssetId $group.id -FallbackToSingleLoggedOnUser:$true -IdentityProtectionCategoryList @(5) -MfaMethodsList @(4) -OverrideBuiltins:$false -RuleDuration 6 -SrcAssetIdsList @($source.id) -SrcUserIdsList @($user.id) -State 1
```

```output
CreatedByEmail                          : 
CreatedByEnforcementSource              : 6
CreatedById                             : m:ea53c6e1d0072c5974ceec597b64989274b7ba5f
CreatedByName                           : powershell
CreatedByUserRole                       : 4
DstEntityInfoId                         : 
DstEntityInfoName                       : 
ItemCreatedAt                           : 1713403659128
ItemDescription                         : 
ItemDstAssetId                          : g:t:01669ce2
ItemExcludedDstAssetIdsList             : {}
ItemExcludedSrcAssetIdsList             : {}
ItemExcludedSrcAssetInfos               : {}
ItemExtraIdentityProtectionCategoryList : {}
ItemFallbackToSingleLoggedOnUser        : True
ItemId                                  : b210c971-6d98-4b75-ae35-d2b8266d74fa
ItemIdentityProtectionCategoryList      : {5}
ItemInnerId                             : 
ItemMfaMethodsList                      : {4}
ItemOverrideBuiltins                    : False
ItemRuleDuration                        : 6
ItemSrcAssetIdsList                     : {b:110001}
ItemSrcAssetInfos                       : {Any asset}
ItemSrcUserIdsList                      : {u:a:jRVryncp}
ItemSrcUserInfos                        : {zero}
ItemState                               : 1
ItemUpdatedAt                           : 1713403659128
UpdatedById                             : 
UpdatedByName                           : 
```

This cmdlet creates an identity MFA policy.
