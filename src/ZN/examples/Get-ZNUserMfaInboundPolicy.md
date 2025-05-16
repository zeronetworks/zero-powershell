### Example 1: List MFA policies
```powershell
$user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
Get-ZNUserMfaInboundPolicy -UserId $user.id
```

```output
AdditionalPortsList            : {}
CreatedAt                      : 1745321781575
CreatedBy                      : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName                  : Zero Networks
Description                    : 
DstEntityInfoId                : b:110005
DstEntityInfoName              : All segmented clients
DstPort                        : 3389
DstProcessNames                : {*}
EnforcementSource              : 5
ExcludedSrcEntityInfos         : {}
ExcludedSrcProcesses           : {}
FallbackToLoggedOnUser         : False
Id                             : 8a83f65e-ebfb-4ab6-88ee-98aa48d60a76
IdentityProtectionCategoryList : {}
MfaMethods                     : {4}
OverrideBuiltins               : False
ProtocolType                   : 6
RestrictLoginToOriginatingUser : True
RuleDuration                   : 6
SrcEntityInfos                 : {Any asset}
SrcProcessNames                : {*}
SrcUserInfos                   : {zero}
State                          : 1
UpdatedAt                      : 1745321781575
UpdatedBy                      : 1f352ed0-86f1-454f-90a5-592c197c8000
UpdatedByName                  : Zero Network
```

This cmdlet lists MFA policies for a user.


### Example 2: Get MFA policy
```powershell
$user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
Get-ZNUserMfaInboundPolicy -UserId $user.id -ReactivePolicyId 8a83f65e-ebfb-4ab6-88ee-98aa48d60a76
```

```output
DstEntityInfoId                    : b:110005
DstEntityInfoName                  : All segmented clients
ItemAdditionalPortsList            : {}
ItemCreatedAt                      : 1745321781575
ItemCreatedBy                      : 1f352ed0-86f1-454f-90a5-592c197c8000
ItemCreatedByName                  : Zero Networks
ItemDescription                    : 
ItemDstPort                        : 3389
ItemDstProcessNames                : {*}
ItemEnforcementSource              : 5
ItemExcludedSrcEntityInfos         : {}
ItemExcludedSrcProcesses           : {}
ItemFallbackToLoggedOnUser         : False
ItemId                             : 8a83f65e-ebfb-4ab6-88ee-98aa48d60a76
ItemIdentityProtectionCategoryList : {}
ItemMfaMethods                     : {4}
ItemOverrideBuiltins               : False
ItemProtocolType                   : 6
ItemRestrictLoginToOriginatingUser : True
ItemRuleDuration                   : 6
ItemSrcEntityInfos                 : {Any asset}
ItemSrcProcessNames                : {*}
ItemSrcUserInfos                   : {zero}
ItemState                          : 1
ItemUpdatedAt                      : 1745321781575
ItemUpdatedBy                      : 1f352ed0-86f1-454f-90a5-592c197c8000
ItemUpdatedByName                  : Zero Networks
```

This cmdlet gets an MFA policy for a user.
