### Example 1: List outbound MFA policies for a specific asset
```powershell
$otasset = Get-ZNAssetsOt | where {$_.Fqdn -eq "ot1777"}
Get-ZNAssetMfaOutboundPolicy -AssetId $otasset.Id       

SrcEntityInfos         SrcProcessNames SrcUserInfos DstEntityInfoName        DstPort DstProcessNames RuleDuration FallbackToLoggedOnUser MfaMethod
                                                                                                                                         s
--------------         --------------- ------------ -----------------        ------- --------------- ------------ ---------------------- ---------
{All segmented assets} {*}             {Any user}   Segmented OT/IoT devices 80,443  {*}             6            True                   {4}
{All segmented assets} {*}             {Any user}   Segmented OT/IoT devices 22      {*}             6            True                   {4}
```

This cmdlet lists the outbound MFA policies for a specific asset.

### Example 2: Get a specific outbound MFA policy for a specific asset
```powershell
Get-ZNAssetMfaOutboundPolicy -AssetId $otasset.Id -ReactivePolicyId 79b5ed54-16c7-45f1-9a5d-ea1022e1d710

DstEntityInfoAssetStatus     : 
DstEntityInfoAssetType       : 
DstEntityInfoDomain          : 
DstEntityInfoFqdn            : 
DstEntityInfoId              : g:s:17445453
DstEntityInfoIpv4Addresses   : 
DstEntityInfoIpv6Addresses   : 
DstEntityInfoName            : Segmented OT/IoT devices
DstEntityInfoOperatingSystem : 
DstEntityInfoProtectionState : 
DstEntityInfoSource          : 
ItemAdditionalPortsList      : {}
ItemCreatedAt                : 1682532554328
ItemCreatedBy                : m:75fae1679ac11d635cd4fbc8921786441ba47a4d
ItemCreatedByName            : irtest
ItemDescription              : 
ItemDstPort                  : 80,443
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
ItemSrcEntityInfos           : {All segmented assets}
ItemSrcProcessNames          : {*}
ItemSrcUserInfos             : {Any user}
ItemState                    : 1
ItemUpdatedAt                : 1682532554328
StateAssetId                 : 
StateIsAssetConnected        : 
StateLasDisconnectedAt       : 
StateProtectAt               : 
StateProtectionState         : 
```

This cmdlet lists a specific outbound MFA policies for a specific asset.
