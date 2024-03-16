### Example 1: Update an outbound MFA policy
```powershell
$mfaPolicy = Get-ZNMfaOutboundPolicy -ReactivePolicyId b307438a-5a02-49a0-a8e3-944c0558f0fe 
$mfaPolicy.ItemDstPort = $mfaPolicy.ItemDstPort+,",23"
Update-ZNMfaOutboundPolicy -ReactivePolicyId $mfaPolicy.ItemId -DstEntityInfoId $mfaPolicy.DstEntityInfoId -DstPort $mfaPolicy.ItemDstPort -FallbackToLoggedOnUser:$false -MfaMethods $mfaPolicy.ItemMfaMethods -ProtocolType $mfaPolicy.ItemProtocolType -RuleCreationMode $mfaPolicy.ItemRuleCreationMode -RuleDuration $mfaPolicy.ItemRuleDuration -SrcEntityInfos $mfaPolicy.ItemSrcEntityInfos -SrcProcessNames $mfaPolicy.ItemSrcProcessNames  -SrcUserInfos $mfaPolicy.ItemSrcUserInfos -State $mfaPolicy.ItemState
```

```output
DstEntityInfoAssetStatus     : 1
DstEntityInfoAssetType       : 0
DstEntityInfoDomain          : 
DstEntityInfoFqdn            : linuxserver.zero.labs
DstEntityInfoId              : a:l:YjoLaKRG
DstEntityInfoIpv4Addresses   : {}
DstEntityInfoIpv6Addresses   : {}
DstEntityInfoManagers        : 
DstEntityInfoName            : linuxserver
DstEntityInfoOperatingSystem : 
DstEntityInfoProtectionState : 1
DstEntityInfoSource          : 15
ItemAdditionalPortsList      : {}
ItemCreatedAt                : 1666114167336
ItemCreatedBy                : m:86786c2f022cf2bd7dc38f165c98b4ee736c8c3b
ItemCreatedByName            : PowerShell
ItemDescription              : 
ItemDstPort                  : 22,24
ItemDstProcessNames          : {*}
ItemFallbackToLoggedOnUser   : True
ItemId                       : e1db180f-e435-498c-ae17-59651f3c3dc3
ItemMfaMethods               : {4}
ItemProtocolType             : 6
ItemRuleDuration             : 6
ItemSrcEntityInfos           : {Any asset}
ItemSrcProcessNames          : {*}
ItemSrcUserInfos             : {Nicholas DiCola}
ItemState                    : 1
ItemUpdatedAt                : 1676343746061
StateAssetId                 : a:l:YjoLaKRG
StateIsAssetConnected        : False
StateLasDisconnectedAt       : 
StateProtectAt               : 
StateProtectionState         : 1
```

This cmdlet will update an outbound MFA policy.
