### Example 1: Create inbound MFA policy
```powershell
$destination = (Get-ZNMfaInboundPoliciesDestinationCandidate -Search "linuxserver").Items
$source = (Get-ZNMfaInboundPoliciesSourceCandidate -search "Any Asset").Items
$sourceEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyInboundBodySrcEntityInfosItem]::new()
$sourceEntity.Id = $source.Id
$sourceUser = (Get-ZNMfaInboundPoliciesSourceUserCandidate -search "Any User").Items
$sourceUserEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyInboundBodySrcUserInfosItem]::new()
$sourceUserEntity.Id = $sourceUser.Id
New-ZNMfaInboundPolicy -DstEntityInfoId $destination.Id -DstPort "22" -DstProcessNames @("*") -FallbackToLoggedOnUser -MfaMethods @(4) -ProtocolType 6 -RuleDuration 6 -SrcEntityInfos @($sourceEntity) -SrcProcessNames @("*") -SrcUserInfos @($sourceUserEntity) -RuleCreationMode 1 -State 1
```

```output
DstEntityInfoId            : a:l:YjoLaKRG
DstEntityInfoName          : linuxserver
ItemCreatedAt              : 1666114167336
ItemCreatedBy              : m:86786c2f022cf2bd7dc38f165c98b4ee736c8c3b
ItemCreatedByName          : PowerShell
ItemDescription            : 
ItemDstPort                : 22
ItemDstProcessNames        : {*}
ItemFallbackToLoggedOnUser : True
ItemId                     : e1db180f-e435-498c-ae17-59651f3c3dc3
ItemMfaMethods             : {4}
ItemProtocolType           : 6
ItemRuleCreationMode       : 1
ItemRuleDuration           : 6
ItemSrcEntityInfos         : {Any asset}
ItemSrcProcessNames        : {*}
ItemSrcUserInfos           : {Any user}
ItemState                  : 1
ItemUpdatedAt              : 1666114167336
```

This cmdlet creates an inbound MFA policy for the environment.
