### Example 1: Update inbound MFA policy for an Asset
```powershell
$asset = Search-ZNAsset -fqdn linux0.posh.local
Update-ZNAssetsMfaInboundPolicy -AssetId $asset -ReactivePolicyId '04217361-4512-4925-8725-0373d60ad1b8' -Description 'New Description'
```
```Output
DstEntityInfoAssetStatus     : 1
DstEntityInfoAssetType       : 0
DstEntityInfoDomain          : 
DstEntityInfoFqdn            : linux0.posh.local
DstEntityInfoId              : a:l:hC8rOTo0
DstEntityInfoIpv4Addresses   : {}
DstEntityInfoIpv6Addresses   : {}
DstEntityInfoName            : Linux0
DstEntityInfoOperatingSystem : 
DstEntityInfoProtectionState : 1
DstEntityInfoSource          : 15
ItemAdditionalPortsList      : {}
ItemCreatedAt                : 1685533693399
ItemCreatedBy                : m:13c49a4eb4fa90bbb948b6c8de5175ad2d36cfbc
ItemCreatedByName            : ModuleTesting
ItemDescription              : New Description
ItemDstPort                  : 47547
ItemDstProcessNames          : {*}
ItemEnforcementSource        : 6
ItemExcludedSrcEntityInfos   : {}
ItemExcludedSrcProcesses     : {}
ItemFallbackToLoggedOnUser   : True
ItemId                       : 04217361-4512-4925-8725-0373d60ad1b8
ItemMfaMethods               : {4}
ItemOverrideBuiltins         : False
ItemProtocolType             : 6
ItemRuleDuration             : 6
ItemSrcEntityInfos           : {Any asset}
ItemSrcProcessNames          : {*}
ItemSrcUserInfos             : {Any user}
ItemState                    : 1
ItemUpdatedAt                : 1688745346340
StateAssetId                 : a:l:hC8rOTo0
StateIsAssetConnected        : False
StateLasDisconnectedAt       : 
StateProtectAt               : 
StateProtectionState         : 1
```

This cmdlet updates and MFA Inbound policy for an asset.
