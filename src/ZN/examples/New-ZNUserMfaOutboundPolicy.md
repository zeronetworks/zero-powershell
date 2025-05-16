### Example 1: Create outbound MFA policy
```powershell
$user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
$destination = (Get-ZNMfaOutboundPoliciesDestinationCandidate -Search "otv2").Items
$source = (Get-ZNMfaOutboundPoliciesSourceCandidate -search "All Segmented Assets").Items
$sourceEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyInboundBodySrcEntityInfosItem]::new()
$sourceEntity.Id = $source.Id
$sourceUserEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyInboundBodySrcUserInfosItem]::new()
$sourceUserEntity.Id = $user.Id
$portsList = New-ZNPortsList -Empty
New-ZNUserMfaOutboundPolicy -UserId $user.id -AdditionalPortsList $portsList -DstEntityInfoId $destination.Id -DstPort "23" -FallbackToLoggedOnUser -OverrideBuiltins -MfaMethods @(4) -ProtocolType 6 -RuleDuration 6 -SrcEntityInfos @($sourceEntity) -SrcProcessNames @("*") -SrcUserInfos @($sourceUserEntity) -State 1
```

```output
DstEntityInfoId                    : a:t:ffPDi031
DstEntityInfoName                  : otv2
ItemAdditionalPortsList            : {}
ItemCreatedAt                      : 1745511466136
ItemCreatedBy                      : m:3929d40ebf7ecfe8dbce815b1c97ea93c2b2aa59
ItemCreatedByName                  : poshtesting
ItemDescription                    : 
ItemDstPort                        : 23
ItemDstProcessNames                : {*}
ItemEnforcementSource              : 6
ItemExcludedSrcEntityInfos         : {}
ItemExcludedSrcProcesses           : {}
ItemFallbackToLoggedOnUser         : True
ItemId                             : 905cf7cd-f616-4699-93a9-420df0db52b2
ItemIdentityProtectionCategoryList : {}
ItemMfaMethods                     : {4}
ItemOverrideBuiltins               : True
ItemProtocolType                   : 6
ItemRestrictLoginToOriginatingUser : False
ItemRuleDuration                   : 6
ItemSrcEntityInfos                 : {All segmented assets}
ItemSrcProcessNames                : {*}
ItemSrcUserInfos                   : {zero}
ItemState                          : 1
ItemUpdatedAt                      : 1745511466136
ItemUpdatedBy                      : m:3929d40ebf7ecfe8dbce815b1c97ea93c2b2aa59
ItemUpdatedByName                  : poshtesting
```

This cmdlet creates an outbound MFA policy for the user.
