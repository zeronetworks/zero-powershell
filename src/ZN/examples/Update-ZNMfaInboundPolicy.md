### Example 1: Update an inbound MFA policy
```powershell
#Get the policy
$mfaPolicy = Get-ZNMfaInboundPolicy -ReactivePolicyId 01d37aff-309e-4581-9f2a-c12c811b035e
#add a port
$mfaPolicy.ItemDstPort = $mfaPolicy.ItemDstPort+,",24"
Update-ZNMfaInboundPolicy -ReactivePolicyId $mfaPolicy.ItemId -DstEntityInfoId $mfaPolicy.DstEntityInfoId -DstPort $mfaPolicy.ItemDstPort -DstProcessNames $mfaPolicy.ItemDstProcessNames -FallbackToLoggedOnUser:$false -MfaMethods $mfaPolicy.ItemMfaMethods -ProtocolType $mfaPolicy.ItemProtocolType -RuleDuration $mfaPolicy.ItemRuleDuration -SrcEntityInfos $mfaPolicy.ItemSrcEntityInfos -SrcProcessNames $mfaPolicy.ItemSrcProcessNames -SrcUserInfos $mfaPolicy.ItemSrcUserInfos -RuleCreationMode $mfaPolicy.ItemRuleCreationMode -State $mfapolicy.ItemState
```

```output
DstEntityInfoId            : a:l:YjoLaKRG
DstEntityInfoName          : linuxserver
ItemCreatedAt              : 1666100652229
ItemCreatedBy              : m:86786c2f022cf2bd7dc38f165c98b4ee736c8c3b
ItemCreatedByName          : PowerShell
ItemDescription            : 
ItemDstPort                : 22-24
ItemDstProcessNames        : {*}
ItemFallbackToLoggedOnUser : False
ItemId                     : 01d37aff-309e-4581-9f2a-c12c811b035e
ItemMfaMethods             : {4}
ItemProtocolType           : 6
ItemRuleCreationMode       : 1
ItemRuleDuration           : 6
ItemSrcEntityInfos         : {Any asset}
ItemSrcProcessNames        : {*}
ItemSrcUserInfos           : {Any user}
ItemState                  : 1
ItemUpdatedAt              : 1666112928847
```

This cmdlet will update an inbound MFA policy
