### Example 1: Create inbound MFA policy
```powershell
$user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
$destination = (Get-ZNMfaInboundPoliciesDestinationCandidate -Search "LA01").Items
$source = (Get-ZNMfaInboundPoliciesSourceCandidate -search "Any Asset").Items
$sourceEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyInboundBodySrcEntityInfosItem]::new()
$sourceEntity.Id = $source.Id
$sourceUserEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyInboundBodySrcUserInfosItem]::new()
$sourceUserEntity.Id = $user.Id
$portsList = New-ZNPortsList -Empty
New-ZNUserMfaInboundPolicy -UserId $user.id -AdditionalPortsList $portsList -DstEntityInfoId $destination.Id -DstPort "23" -DstProcessNames @("*") -FallbackToLoggedOnUser -OverrideBuiltins -MfaMethods @(4) -ProtocolType 6 -RuleDuration 6 -SrcEntityInfos @($sourceEntity) -SrcProcessNames @("*") -SrcUserInfos @($sourceUserEntity) -State 1
```

```output
DstEntityInfoId                    : a:a:EzbcAdb7
DstEntityInfoName                  : LA01
ItemAdditionalPortsList            : {}
ItemCreatedAt                      : 1745511129241
ItemCreatedBy                      : m:3929d40ebf7ecfe8dbce815b1c97ea93c2b2aa59
ItemCreatedByName                  : poshtesting
ItemDescription                    : 
ItemDstPort                        : 23
ItemDstProcessNames                : {*}
ItemEnforcementSource              : 6
ItemExcludedSrcEntityInfos         : {}
ItemExcludedSrcProcesses           : {}
ItemFallbackToLoggedOnUser         : True
ItemId                             : f459e8b0-f7f8-4157-8989-afee1cac7735
ItemIdentityProtectionCategoryList : {}
ItemMfaMethods                     : {4}
ItemOverrideBuiltins               : True
ItemProtocolType                   : 6
ItemRestrictLoginToOriginatingUser : False
ItemRuleDuration                   : 6
ItemSrcEntityInfos                 : {Any asset}
ItemSrcProcessNames                : {*}
ItemSrcUserInfos                   : {zero}
ItemState                          : 1
ItemUpdatedAt                      : 1745511129241
ItemUpdatedBy                      : m:3929d40ebf7ecfe8dbce815b1c97ea93c2b2aa59
ItemUpdatedByName                  : poshtesting
```

This cmdlet creates an inbound MFA policy for the user.
