### Example 1: Create an Identity MFA Policy
```powershell
$asset = (Search-ZNAsset -Fqdn dc01.posh.local).AssetId
$source = (Get-ZNMfaIdentityPoliciesSourceCandidate -Search "Any Asset").items
$users = (Get-ZNMfaIdentityPoliciesSourceUserCandidate -Search "Domain Admins").items
New-ZNAssetMfaIdentityPolicy -AssetId $asset -DstAssetId $asset -FallbackToSingleLoggedOnUser:$true -IdentityProtectionCategoryList @(5) -MfaMethodsList @(4) -OverrideBuiltins:$false -RuleDuration 6 -SrcAssetIdsList @($source.id) -SrcUserIdsList @($users.id) -State 1
```

```output
CreatedByEmail                          : 
CreatedByEnforcementSource              : 6
CreatedById                             : m:ea53c6e1d0072c5974ceec597b64989274b7ba5f
CreatedByName                           : powershell
CreatedByUserRole                       : 4
DstEntityInfoId                         : 
DstEntityInfoName                       : 
ItemCreatedAt                           : 1713403419980
ItemDescription                         : 
ItemDstAssetId                          : a:a:VWW2G2C8
ItemExcludedDstAssetIdsList             : {}
ItemExcludedSrcAssetIdsList             : {}
ItemExcludedSrcAssetInfos               : {}
ItemExtraIdentityProtectionCategoryList : {}
ItemFallbackToSingleLoggedOnUser        : True
ItemId                                  : 155399f7-15a4-4c83-a0ad-db54fda99181
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
ItemUpdatedAt                           : 1713403419980
UpdatedById                             : 
UpdatedByName                           : 
```

This cmdlet creates an identity MFA policy.
