### Example 1: Update outbound MFA policy for an asset
```powershell
$asset = Search-ZNAsset -fqdn ot1777
$mfaPolicy = Get-ZNAssetOtMfaOutboundPolicy -AssetId $asset -ReactivePolicyId 27ffdf06-61ae-4cfb-987f-5e70a99dd768
$mfaPolicy.ItemDstPort = $mfaPolicy.ItemDstPort+,",24"
Update-ZNAssetOtMfaOutboundPolicy -AssetId $asset -ReactivePolicyId $mfaPolicy.ItemId -DstPort $mfaPolicy.ItemDstPort

DstEntityInfoAssetStatus     : 5
DstEntityInfoAssetType       : 4
DstEntityInfoDomain          : 
DstEntityInfoFqdn            : ot1777
DstEntityInfoId              : a:t:OeG7qsVV
DstEntityInfoIpv4Addresses   : {230.176.229.143}
DstEntityInfoIpv6Addresses   : {}
DstEntityInfoName            : ot1777
DstEntityInfoOperatingSystem : 
DstEntityInfoProtectionState : 3
DstEntityInfoSource          : 7
ItemAdditionalPortsList      : {}
ItemCreatedAt                : 1695053450930
ItemCreatedBy                : u:a:w27loY5p
ItemCreatedByName            : nicholas
ItemDescription              : 
ItemDstPort                  : 24,124
ItemDstProcessNames          : {*}
ItemEnforcementSource        : 6
ItemExcludedSrcEntityInfos   : {}
ItemExcludedSrcProcesses     : {}
ItemFallbackToLoggedOnUser   : False
ItemId                       : 27ffdf06-61ae-4cfb-987f-5e70a99dd768
ItemMfaMethods               : {4}
ItemOverrideBuiltins         : False
ItemProtocolType             : 6
ItemRuleDuration             : 6
ItemSrcEntityInfos           : {All segmented assets}
ItemSrcProcessNames          : {*}
ItemSrcUserInfos             : {Any user}
ItemState                    : 1
ItemUpdatedAt                : 1695053462690
StateAssetId                 : 
StateIsAssetConnected        : 
StateLasDisconnectedAt       : 
StateProtectAt               : 
StateProtectionState         : 
```

This cmdlet updates an outbound MFA policy for an asset.
