### Example 1: Update outbound MFA policy for an asset
```powershell
$asset = Search-ZNAsset -fqdn ot1777
$mfaPolicy = Get-ZNAssetMfaOutboundPolicy -AssetId $asset -ReactivePolicyId 58591671-003e-4b02-87ae-d696d87d732f
$mfaPolicy.ItemDstPort = $mfaPolicy.ItemDstPort+,",24"
Update-ZNAssetMfaOutboundPolicy -AssetId $asset -ReactivePolicyId $mfaPolicy.ItemId -DstPort $mfaPolicy.ItemDstPort

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
ItemCreatedAt                : 1695053277126
ItemCreatedBy                : u:a:w27loY5p
ItemCreatedByName            : nicholas
ItemDescription              : 
ItemDstPort                  : 24,123
ItemDstProcessNames          : {*}
ItemEnforcementSource        : 6
ItemExcludedSrcEntityInfos   : {}
ItemExcludedSrcProcesses     : {}
ItemFallbackToLoggedOnUser   : False
ItemId                       : 58591671-003e-4b02-87ae-d696d87d732f
ItemMfaMethods               : {4}
ItemOverrideBuiltins         : False
ItemProtocolType             : 6
ItemRuleDuration             : 6
ItemSrcEntityInfos           : {All segmented assets}
ItemSrcProcessNames          : {*}
ItemSrcUserInfos             : {Any user}
ItemState                    : 1
ItemUpdatedAt                : 1695053293895
StateAssetId                 : 
StateIsAssetConnected        : 
StateLasDisconnectedAt       : 
StateProtectAt               : 
StateProtectionState         :
```

This cmdlet updates an outbound MFA policy for an asset.
