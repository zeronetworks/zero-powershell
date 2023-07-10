### Example 1: Update outbound MFA policy for an Asset
```powershell
Update-ZNAssetsMfaInboundPolicy -AssetId 'a:t:aCxJya46' -ReactivePolicyId '79b5ed54-16c7-45f1-9a5d-ea1022e1d710' -Description 'New Description'
```
```Output
DstEntityInfoAssetStatus     : 
DstEntityInfoAssetType       : 
DstEntityInfoDomain          : 
DstEntityInfoFqdn            : 
DstEntityInfoId              : g:s:17445453
DstEntityInfoIpv4Addresses   : {}
DstEntityInfoIpv6Addresses   : {}
DstEntityInfoName            : Protected OT/IoT devices
DstEntityInfoOperatingSystem : 
DstEntityInfoProtectionState : 
DstEntityInfoSource          : 
ItemAdditionalPortsList      : {}
ItemCreatedAt                : 1685533693399
ItemCreatedBy                : m:13c49a4eb4fa90bbb948b6c8de5175ad2d36cfbc
ItemCreatedByName            : ModuleTesting
ItemDescription              : New Description
ItemDstPort                  : 22
ItemDstProcessNames          : {*}
ItemEnforcementSource        : 6
ItemExcludedSrcEntityInfos   : {}
ItemExcludedSrcProcesses     : {}
ItemFallbackToLoggedOnUser   : True
ItemId                       : 79b5ed54-16c7-45f1-9a5d-ea1022e1d710
ItemMfaMethods               : {4}
ItemOverrideBuiltins         : False
ItemProtocolType             : 6
ItemRuleDuration             : 6
ItemSrcEntityInfos           : {Any asset}
ItemSrcProcessNames          : {*}
ItemSrcUserInfos             : {Any user}
ItemState                    : 1
ItemUpdatedAt                : 1688745346340
StateAssetId                 : 
StateIsAssetConnected        : False
StateLasDisconnectedAt       : 
StateProtectAt               : 
StateProtectionState         : 1
```

This cmdlet updates and MFA outbound policy for an asset.
