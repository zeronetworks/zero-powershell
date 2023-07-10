### Example 1: List inbound MFA policies for a specific asset
```powershell
Get-ZNAssetsMfaInboundPolicy -AssetId 'a:a:OtfLGUBq'
```

```output
SrcEntityInfos SrcProcessNames SrcUserInfos DstEntityInfoName  DstPort DstProcessNames RuleDuration FallbackToLoggedOnUser MfaMethods
-------------- --------------- ------------ -----------------  ------- --------------- ------------ ---------------------- ----------
{Clients}      {pwsh.exe}      {Any user}   Domain controllers 3389    {*}             1            True                   {5}
```

This cmdlet gets inbound MFA policies from the environment.

### Example 2: Get a specific inbound MFA policy
```powershell
Get-ZNAssetsMfaInboundPolicy -AssetId 'a:a:OtfLGUBq' -ReactivePolicyId 1bedf6e4-2ed5-4e3a-987c-469baefd057b```

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
ItemCreatedAt                : 1681400577369
ItemCreatedBy                : 1f352ed0-86f1-454f-90a5-592c197c8000
ItemCreatedByName            : Zero Networks
ItemDescription              : 
ItemDstPort                  : 3389
ItemDstProcessNames          : {*}
ItemEnforcementSource        : 5
ItemExcludedSrcEntityInfos   : {}
ItemExcludedSrcProcesses     : {}
ItemFallbackToLoggedOnUser   : True
ItemId                       : 1bedf6e4-2ed5-4e3a-987c-469baefd057b
ItemMfaMethods               : {5}
ItemOverrideBuiltins         : True
ItemProtocolType             : 6
ItemRuleDuration             : 1
ItemSrcEntityInfos           : {Clients}
ItemSrcProcessNames          : {pwsh.exe}
ItemSrcUserInfos             : {Any user}
ItemState                    : 1
ItemUpdatedAt                : 1681400675551
StateAssetId                 : 
StateIsAssetConnected        : 
StateLasDisconnectedAt       : 
StateProtectAt               : 
StateProtectionState         : 
```

Get a specific inbound MFA policy.

