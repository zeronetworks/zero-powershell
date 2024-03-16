### Example 1: Update inbound MFA policy for an group
```powershell
$group = Get-ZNGroup -Search "Domain controllers" | where {$_.Id -like "g:t:*"}
$mfaPolicy = Get-ZNGroupsMfaInboundPolicy -GroupId $group.Id -GroupType tag -ReactivePolicyId 244d0d8a-beb1-45f1-a2c4-e3372d605646
$mfaPolicy.ItemDstPort = $mfaPolicy.ItemDstPort+,",24"
Update-ZNGroupsMfaInboundPolicy -GroupId $group.Id -GroupType tag -ReactivePolicyId $mfaPolicy.ItemId -DstPort $mfaPolicy.ItemDstPort
```

```output
DstEntityInfoAssetStatus     : 
DstEntityInfoAssetType       : 
DstEntityInfoDomain          : 
DstEntityInfoFqdn            : 
DstEntityInfoId              : g:t:01445453
DstEntityInfoIpv4Addresses   : 
DstEntityInfoIpv6Addresses   : 
DstEntityInfoName            : Domain controllers
DstEntityInfoOperatingSystem : 
DstEntityInfoProtectionState : 
DstEntityInfoSource          : 
ItemAdditionalPortsList      : {}
ItemCreatedAt                : 1694783423106
ItemCreatedBy                : m:13c49a4eb4fa90bbb948b6c8de5175ad2d36cfbc
ItemCreatedByName            : ModuleTesting
ItemDescription              : 
ItemDstPort                  : 24,443
ItemDstProcessNames          : {*}
ItemEnforcementSource        : 6
ItemExcludedSrcEntityInfos   : {}
ItemExcludedSrcProcesses     : {}
ItemFallbackToLoggedOnUser   : True
ItemId                       : 244d0d8a-beb1-45f1-a2c4-e3372d605646
ItemMfaMethods               : {4}
ItemOverrideBuiltins         : True
ItemProtocolType             : 6
ItemRuleDuration             : 6
ItemSrcEntityInfos           : {Any asset}
ItemSrcProcessNames          : {*}
ItemSrcUserInfos             : {Any user}
ItemState                    : 1
ItemUpdatedAt                : 1695055718897
StateAssetId                 : 
StateIsAssetConnected        : 
StateLasDisconnectedAt       : 
StateProtectAt               : 
StateProtectionState         : 
```

This cmdlet updates an inbound MFA policy for an group.
