### Example 1: Update outbound MFA policy for a user
```powershell
$user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
$mfaPolicy = Get-ZNUserMfaOutboundPolicy -UserId $user.id -ReactivePolicyId ae478151-372f-4873-8513-bb0c2b542571
$mfaPolicy.ItemDstPort = $mfaPolicy.ItemDstPort+,",24"
Update-ZNUserMfaOutboundPolicy -UserId $user.id -ReactivePolicyId $mfaPolicy.ItemId -DstPort $mfaPolicy.ItemDstPort
```

```output
DstEntityInfoAssetStatus     : 7
DstEntityInfoAssetType       : 1
DstEntityInfoDomain          : posh.local
DstEntityInfoFqdn            : WC01.posh.local
DstEntityInfoId              : a:a:OtfLGUBq
DstEntityInfoIpv4Addresses   : {10.1.0.8}
DstEntityInfoIpv6Addresses   : {}
DstEntityInfoName            : WC01
DstEntityInfoOperatingSystem : Windows 11 Enterprise
DstEntityInfoProtectionState : 1
DstEntityInfoSource          : 3
ItemAdditionalPortsList      : {}
ItemCreatedAt                : 1695053153799
ItemCreatedBy                : u:a:w27loY5p
ItemCreatedByName            : nicholas
ItemDescription              : 
ItemDstPort                  : 24,123
ItemDstProcessNames          : {*}
ItemEnforcementSource        : 6
ItemExcludedSrcEntityInfos   : {}
ItemExcludedSrcProcesses     : {}
ItemFallbackToLoggedOnUser   : False
ItemId                       : d6e8392a-b1c8-4fa2-ae36-8093b86b0860
ItemMfaMethods               : {4}
ItemOverrideBuiltins         : False
ItemProtocolType             : 6
ItemRuleDuration             : 6
ItemSrcEntityInfos           : {Any asset}
ItemSrcProcessNames          : {*}
ItemSrcUserInfos             : {Any user}
ItemState                    : 1
ItemUpdatedAt                : 1695053185370
StateAssetId                 : a:a:OtfLGUBq
StateIsAssetConnected        : True
StateLasDisconnectedAt       : 
StateProtectAt               : 
StateProtectionState         : 1
```

This cmdlet updates an outbound MFA policy for a user.
