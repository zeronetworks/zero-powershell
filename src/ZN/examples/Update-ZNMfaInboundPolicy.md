### Example 1: Update an inbound MFA policy
```powershell
#Get the policy
$mfaPolicy = Get-ZNMfaInboundPolicy -ReactivePolicyId e1db180f-e435-498c-ae17-59651f3c3dc3
#add a port
$mfaPolicy.ItemDstPort = $mfaPolicy.ItemDstPort+,",24"
Update-ZNMfaInboundPolicy -ReactivePolicyId $mfaPolicy.ItemId -DstPort $mfaPolicy.ItemDstPort
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

This cmdlet will update an inbound MFA policy
