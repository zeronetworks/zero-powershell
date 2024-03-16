### Example 1: Create outbound MFA policy for an asset
```powershell
$asset = Search-ZNAsset -fqdn ot1777
$destination = (Get-ZNMfaOutboundPoliciesDestinationCandidate -Search "ot1777").Items
$source = (Get-ZNMfaOutboundPoliciesSourceCandidate -search "All Segmented Assets").Items
$sourceEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyOutboundBodySrcEntityInfosItem]::new()
$sourceEntity.Id = $source.Id
$sourceUser = (Get-ZNMfaInboundPoliciesSourceUserCandidate -search "Any User").Items
$sourceUserEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyOutboundBodySrcUserInfosItem]::new()
$sourceUserEntity.Id = $sourceUser.Id
$portsList = New-ZNPortsList -Empty
New-ZNAssetMfaOutboundPolicy -AssetId $asset -AdditionalPortsList $portsList -DstEntityInfoId $destination.Id -DstPort "22" -FallbackToLoggedOnUser -MfaMethods @(4) -OverrideBuiltins -ProtocolType 6 -RuleDuration 6 -SrcEntityInfos @($sourceEntity) -SrcProcessNames @("*") -SrcUserInfos @($sourceUserEntity) -State 1
```

```output
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
ItemCreatedAt                : 1694722913050
ItemCreatedBy                : m:13c49a4eb4fa90bbb948b6c8de5175ad2d36cfbc
ItemCreatedByName            : ModuleTesting
ItemDescription              : 
ItemDstPort                  : 22
ItemDstProcessNames          : {*}
ItemEnforcementSource        : 6
ItemExcludedSrcEntityInfos   : {}
ItemExcludedSrcProcesses     : {}
ItemFallbackToLoggedOnUser   : True
ItemId                       : 26012f7a-5b56-418f-a67f-b79a3dbeefde
ItemMfaMethods               : {4}
ItemOverrideBuiltins         : True
ItemProtocolType             : 6
ItemRuleDuration             : 6
ItemSrcEntityInfos           : {All segmented assets}
ItemSrcProcessNames          : {*}
ItemSrcUserInfos             : {Any user}
ItemState                    : 1
ItemUpdatedAt                : 1694722913050
StateAssetId                 : 
StateIsAssetConnected        : 
StateLasDisconnectedAt       : 
StateProtectAt               : 
StateProtectionState         : 
```

This cmdlet creates an outbound MFA policy for the environment.
