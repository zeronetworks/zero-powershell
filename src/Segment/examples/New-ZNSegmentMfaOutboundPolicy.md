### Example 1: Create outbound MFA policy
```powershell
$destination = (Get-ZNSegmentMfaOutboundPoliciesDestinationCandidate -Search "switch01").Items
$source = (Get-ZNSegmentMfaOutboundPoliciesSourceCandidate -search "All Protected Assets").Items
$sourceEntity = [ZeroNetworks.PowerShell.Cmdlets.Segment.Models.ReactivePolicyOutboundBodySrcEntityInfosItem]::new()
$sourceEntity.Id = $source.Id
$sourceUser = (Get-ZNSegmentMfaInboundPoliciesSourceUserCandidate -search "Any User").Items
$sourceUserEntity = [ZeroNetworks.PowerShell.Cmdlets.Segment.Models.ReactivePolicyOutboundBodySrcUserInfosItem]::new()
$sourceUserEntity.Id = $sourceUser.Id
New-ZNSegmentMfaOutboundPolicy -DstEntityInfoId $destination.Id -DstPort "22" -FallbackToLoggedOnUser -MfaMethods @(4) -ProtocolType 6 -RuleDuration 6 -SrcEntityInfos @($sourceEntity) -SrcProcessNames @("*") -SrcUserInfos @($sourceUserEntity) -RuleCreationMode 1 -State 1
```

```output
DstEntityInfoId            : a:t:oOkjcyED
DstEntityInfoName          : switch01
ItemCreatedAt              : 1666114548648
ItemCreatedBy              : m:86786c2f022cf2bd7dc38f165c98b4ee736c8c3b
ItemCreatedByName          : PowerShell
ItemDescription            : 
ItemDstPort                : 22
ItemDstProcessNames        : {*}
ItemFallbackToLoggedOnUser : True
ItemId                     : 47e1eed4-2288-41c7-8307-68faf3594b7d
ItemMfaMethods             : {4}
ItemProtocolType           : 6
ItemRuleCreationMode       : 1
ItemRuleDuration           : 6
ItemSrcEntityInfos         : {All protected assets}
ItemSrcProcessNames        : {*}
ItemSrcUserInfos           : {Any user}
ItemState                  : 1
ItemUpdatedAt              : 1666114548648
```

This cmdlet creates an outbound MFA policy for the environment.
