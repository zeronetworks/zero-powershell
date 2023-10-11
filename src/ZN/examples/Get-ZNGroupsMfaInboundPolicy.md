### Example 1: List MFA policies for a specific group.
```powershell
$group = Get-ZNGroup -Search "Domain controllers" | where {$_.Domain -eq "tag"}
Get-ZNGroupsMfaInboundPolicy -Groupid $group.id -GroupType tag                             

SrcEntityInfos SrcProcessNames SrcUserInfos DstEntityInfoName  DstPort DstProcessNames RuleDuration FallbackToLoggedOnUser MfaMethods
-------------- --------------- ------------ -----------------  ------- --------------- ------------ ---------------------- ----------
{Any asset}    {*}             {Any user}   Domain controllers 9389    {*}             7            False                  {4}
```

This cmdlet gets MFA policies for a specific group.

### Example 2: Get a specific MFA policy for a specific group
```powershell
Get-ZNGroupsMfaInboundPolicy -Groupid $group.id -GroupType tag -ReactivePolicyId aec46c4f-4512-4896-91a2-fd360d67c9d2

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
ItemCreatedAt                : 1679404767070
ItemCreatedBy                : 1f352ed0-86f1-454f-90a5-592c197c8000
ItemCreatedByName            : Zero Networks
ItemDescription              : Auto-generated rule for tag groups
ItemDstPort                  : 9389
ItemDstProcessNames          : {*}
ItemEnforcementSource        : 5
ItemExcludedSrcEntityInfos   : {}
ItemExcludedSrcProcesses     : {}
ItemFallbackToLoggedOnUser   : False
ItemId                       : aec46c4f-4512-4896-91a2-fd360d67c9d2
ItemMfaMethods               : {4}
ItemOverrideBuiltins         : False
ItemProtocolType             : 6
ItemRuleDuration             : 7
ItemSrcEntityInfos           : {Any asset}
ItemSrcProcessNames          : {*}
ItemSrcUserInfos             : {Any user}
ItemState                    : 1
ItemUpdatedAt                : 1679404767070
StateAssetId                 : 
StateIsAssetConnected        : 
StateLasDisconnectedAt       : 
StateProtectAt               : 
StateProtectionState         : 
```

This cmdlet can get a specific MFA policy for a specific group.

