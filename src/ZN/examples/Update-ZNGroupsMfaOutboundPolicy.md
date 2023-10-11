### Example 1: Update outbound MFA policy for an asset
```powershell
$group = Get-ZNGroup -Search "Door locks" | where {$_.Id -like "g:o:*"}
$mfaPolicy = Get-ZNGroupsMfaOutboundPolicy -GroupId $group.Id -GroupType ot -ReactivePolicyId f093f91b-aaea-4c00-9042-b074410ab9f0
$mfaPolicy.ItemDstPort = $mfaPolicy.ItemDstPort+,",24"
Update-ZNGroupsMfaOutboundPolicy -GroupId $group.Id -GroupType ot -ReactivePolicyId $mfaPolicy.ItemId -DstPort $mfaPolicy.ItemDstPort

DstEntityInfoAssetStatus     : 
DstEntityInfoAssetType       : 
DstEntityInfoDomain          : 
DstEntityInfoFqdn            : 
DstEntityInfoId              : g:o:0S445453
DstEntityInfoIpv4Addresses   : 
DstEntityInfoIpv6Addresses   : 
DstEntityInfoName            : Door locks
DstEntityInfoOperatingSystem : 
DstEntityInfoProtectionState : 
DstEntityInfoSource          : 
ItemAdditionalPortsList      : {}
ItemCreatedAt                : 1695055855563
ItemCreatedBy                : u:a:w27loY5p
ItemCreatedByName            : nicholas
ItemDescription              : 
ItemDstPort                  : 24,123
ItemDstProcessNames          : {*}
ItemEnforcementSource        : 6
ItemExcludedSrcEntityInfos   : {}
ItemExcludedSrcProcesses     : {}
ItemFallbackToLoggedOnUser   : False
ItemId                       : f093f91b-aaea-4c00-9042-b074410ab9f0
ItemMfaMethods               : {1}
ItemOverrideBuiltins         : False
ItemProtocolType             : 6
ItemRuleDuration             : 6
ItemSrcEntityInfos           : {All segmented assets}
ItemSrcProcessNames          : {*}
ItemSrcUserInfos             : {Any user}
ItemState                    : 1
ItemUpdatedAt                : 1695055884495
StateAssetId                 : 
StateIsAssetConnected        : 
StateLasDisconnectedAt       : 
StateProtectAt               : 
StateProtectionState         : 
```

This cmdlet updates an outbound MFA policy for an group.
