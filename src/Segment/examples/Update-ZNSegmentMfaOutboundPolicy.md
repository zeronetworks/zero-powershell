### Example 1: Update an inbound MFA policy
```powershell
#Get the policy
$mfaPolicy = Get-ZNSegmentMfaOutboundPolicy -ReactivePolicyId b307438a-5a02-49a0-a8e3-944c0558f0fe 
#add a port
$mfaPolicy.ItemDstPort = $mfaPolicy.ItemDstPort+,",23"
Update-ZNSegmentMfaOutboundPolicy -ReactivePolicyId $mfaPolicy.ItemId -DstEntityInfoId $mfaPolicy.DstEntityInfoId -DstPort $mfaPolicy.ItemDstPort -FallbackToLoggedOnUser:$false -MfaMethods $mfaPolicy.ItemMfaMethods -ProtocolType $mfaPolicy.ItemProtocolType -RuleCreationMode $mfaPolicy.ItemRuleCreationMode -RuleDuration $mfaPolicy.ItemRuleDuration -SrcEntityInfos $mfaPolicy.ItemSrcEntityInfos -SrcProcessNames $mfaPolicy.ItemSrcProcessNames  -SrcUserInfos $mfaPolicy.ItemSrcUserInfos -State $mfaPolicy.ItemState
```

```output
DstEntityInfoId            : a:t:oOkjcyED
DstEntityInfoName          : switch01
ItemCreatedAt              : 1665598259106
ItemCreatedBy              : 1f352ed0-86f1-454f-90a5-592c197c8000
ItemCreatedByName          : Zero Networks
ItemDescription            : 
ItemDstPort                : 22-23
ItemDstProcessNames        : {*}
ItemFallbackToLoggedOnUser : False
ItemId                     : b307438a-5a02-49a0-a8e3-944c0558f0fe
ItemMfaMethods             : {4}
ItemProtocolType           : 6
ItemRuleCreationMode       : 1
ItemRuleDuration           : 6
ItemSrcEntityInfos         : {All protected assets}
ItemSrcProcessNames        : {*}
ItemSrcUserInfos           : {Any user}
ItemState                  : 1
ItemUpdatedAt              : 1666114035566
```

This cmdlet will update an outbound MFA policy
