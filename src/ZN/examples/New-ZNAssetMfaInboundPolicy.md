### Example 1: Create a MFA policy for an asset
```powershell
$asset = Search-ZNAsset -fqdn wc01.posh.local
$destination = (Get-ZNMfaInboundPoliciesDestinationCandidate -Search "wc01.posh.local").Items
$source = (Get-ZNMfaInboundPoliciesSourceCandidate -search "Any Asset").Items
$sourceEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyInboundBodySrcEntityInfosItem]::new()
$sourceEntity.Id = $source.Id
$sourceUser = (Get-ZNMfaInboundPoliciesSourceUserCandidate -search "Any User").Items
$sourceUserEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyInboundBodySrcUserInfosItem]::new()
$sourceUserEntity.Id = $sourceUser.Id
$portsList = New-ZNPortsList -Empty
New-ZNAssetMfaInboundPolicy -AssetId $asset -AdditionalPortsList $portsList -DstEntityInfoId $destination.Id -DstPort "22" -DstProcessNames @("*") -FallbackToLoggedOnUser -OverrideBuiltins -MfaMethods @(4) -ProtocolType 6 -RuleDuration 6 -SrcEntityInfos @($sourceEntity) -SrcProcessNames @("*") -SrcUserInfos @($sourceUserEntity) -State 1
     
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
ItemCreatedAt                : 1694722774574
ItemCreatedBy                : m:13c49a4eb4fa90bbb948b6c8de5175ad2d36cfbc
ItemCreatedByName            : ModuleTesting
ItemDescription              : 
ItemDstPort                  : 22
ItemDstProcessNames          : {*}
ItemEnforcementSource        : 6
ItemExcludedSrcEntityInfos   : {}
ItemExcludedSrcProcesses     : {}
ItemFallbackToLoggedOnUser   : True
ItemId                       : 1d68356c-ce24-49b5-9079-a314a76d7e03
ItemMfaMethods               : {4}
ItemOverrideBuiltins         : True
ItemProtocolType             : 6
ItemRuleDuration             : 6
ItemSrcEntityInfos           : {Any asset}
ItemSrcProcessNames          : {*}
ItemSrcUserInfos             : {Any user}
ItemState                    : 1
ItemUpdatedAt                : 1694722774574
StateAssetId                 : a:a:OtfLGUBq
StateIsAssetConnected        : True
StateLasDisconnectedAt       : 
StateProtectAt               : 
StateProtectionState         : 1
```

This cmdlet creates a MFA policy for an asset.


