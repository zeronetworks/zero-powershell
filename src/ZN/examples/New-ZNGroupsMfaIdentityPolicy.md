### Example 1: Create an Identity MFA Policy
```powershell
$group = (Get-ZNMfaIdentityPoliciesDestinationCandidate -Search "domain controllers").items | where {$_.Id -like "g:t:*"}
$source = (Get-ZNMfaIdentityPoliciesSourceCandidate -Search "Any Asset").items
$users = (Get-ZNMfaIdentityPoliciesSourceUserCandidate -Search "Domain Admins").items
New-ZNGroupsMfaIdentityPolicy -GroupId $group.Id -GroupType tag -DstAssetId $group.id -FallbackToSingleLoggedOnUser:$true -IdentityProtectionCategoryList @(5) -MfaMethodsList @(4) -OverrideBuiltins:$false -RuleDuration 6 -SrcAssetIdsList @($source.id) -SrcUserIdsList @($users.id) -State 1
```

```output
CreatedByEmail                          : 
CreatedByEnforcementSource              : 6
CreatedById                             : m:ea53c6e1d0072c5974ceec597b64989274b7ba5f
CreatedByName                           : powershell
CreatedByUserRole                       : 4
DstEntityInfoId                         : 
DstEntityInfoName                       : 
ItemCreatedAt                           : 1713403534831
ItemDescription                         : 
ItemDstAssetId                          : g:t:01669ce2
ItemExcludedDstAssetIdsList             : {}
ItemExcludedSrcAssetIdsList             : {}
ItemExcludedSrcAssetInfos               : {}
ItemExtraIdentityProtectionCategoryList : {}
ItemFallbackToSingleLoggedOnUser        : True
ItemId                                  : 589cf54b-c9ca-4062-af45-070cbf820aa2
ItemIdentityProtectionCategoryList      : {5}
ItemInnerId                             : 
ItemMfaMethodsList                      : {4}
ItemOverrideBuiltins                    : False
ItemRuleDuration                        : 6
ItemSrcAssetIdsList                     : {b:110001}
ItemSrcAssetInfos                       : {Any asset}
ItemSrcUserIdsList                      : {g:a:3U1Z38mF}
ItemSrcUserInfos                        : {Domain Admins}
ItemState                               : 1
ItemUpdatedAt                           : 1713403534831
UpdatedById                             : 
UpdatedByName                           : 
```

This cmdlet creates an identity MFA policy.
