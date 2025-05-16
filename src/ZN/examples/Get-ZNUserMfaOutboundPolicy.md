### Example 1: List MFA policies
```powershell
$user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
Get-ZNUserMfaOutboundPolicy -UserId $user.id
```

```output
AdditionalPortsList            : {}
CreatedAt                      : 1745321916352
CreatedBy                      : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName                  : Zero Networks
Description                    : 
DstEntityInfoId                : a:t:BPFR4ZlN
DstEntityInfoName              : activeOT
DstPort                        : 22
DstProcessNames                : {*}
EnforcementSource              : 5
ExcludedSrcEntityInfos         : {}
ExcludedSrcProcesses           : {}
FallbackToLoggedOnUser         : False
Id                             : 0e7f8488-2a7e-45dc-925b-e86172ae489f
IdentityProtectionCategoryList : {}
MfaMethods                     : {4}
OverrideBuiltins               : False
ProtocolType                   : 6
RestrictLoginToOriginatingUser : True
RuleDuration                   : 6
SrcEntityInfos                 : {All segmented assets}
SrcProcessNames                : {*}
SrcUserInfos                   : {zero}
State                          : 1
UpdatedAt                      : 1745321916352
UpdatedBy                      : 1f352ed0-86f1-454f-90a5-592c197c8000
UpdatedByName                  : Zero Networks
```

This cmdlet lists MFA policies for a user.


### Example 2: Get MFA policy
```powershell
$user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
Get-ZNUserMfaOutboundPolicy -UserId $user.id -ReactivePolicyId 0e7f8488-2a7e-45dc-925b-e86172ae489f
```

```output
DstEntityInfoId                    : a:t:BPFR4ZlN
DstEntityInfoName                  : activeOT
ItemAdditionalPortsList            : {}
ItemCreatedAt                      : 1745321916352
ItemCreatedBy                      : 1f352ed0-86f1-454f-90a5-592c197c8000
ItemCreatedByName                  : Zero Networks
ItemDescription                    : 
ItemDstPort                        : 22
ItemDstProcessNames                : {*}
ItemEnforcementSource              : 5
ItemExcludedSrcEntityInfos         : {}
ItemExcludedSrcProcesses           : {}
ItemFallbackToLoggedOnUser         : False
ItemId                             : 0e7f8488-2a7e-45dc-925b-e86172ae489f
ItemIdentityProtectionCategoryList : {}
ItemMfaMethods                     : {4}
ItemOverrideBuiltins               : False
ItemProtocolType                   : 6
ItemRestrictLoginToOriginatingUser : True
ItemRuleDuration                   : 6
ItemSrcEntityInfos                 : {All segmented assets}
ItemSrcProcessNames                : {*}
ItemSrcUserInfos                   : {zero}
ItemState                          : 1
ItemUpdatedAt                      : 1745321916352
ItemUpdatedBy                      : 1f352ed0-86f1-454f-90a5-592c197c8000
ItemUpdatedByName                  : Zero Networks
```

This cmdlet gets an MFA policy for a user.
