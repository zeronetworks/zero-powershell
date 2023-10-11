### Example 1: Create outbound MFA policy for a group
```powershell
$group = Get-ZNGroup -Search "Cameras" | where {$_.Id -like "g:t:*"}
$destination = (Get-ZNMfaOutboundPoliciesDestinationCandidate -Search "Cameras").Items
$source = (Get-ZNMfaOutboundPoliciesSourceCandidate -search "All Segmented Assets").Items
$sourceEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyOutboundBodySrcEntityInfosItem]::new()
$sourceEntity.Id = $source.Id
$sourceUser = (Get-ZNMfaInboundPoliciesSourceUserCandidate -search "Any User").Items
$sourceUserEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyOutboundBodySrcUserInfosItem]::new()
$sourceUserEntity.Id = $sourceUser.Id
$portsList = New-ZNPortsList -Empty
New-ZNGroupsMfaOutboundPolicy -GroupId $group.Id -GroupType ot -AdditionalPortsList $portsList -DstEntityInfoId $destination.Id -DstPort "443" -FallbackToLoggedOnUser -MfaMethods @(4) -OverrideBuiltins -ProtocolType 6 -RuleDuration 6 -SrcEntityInfos @($sourceEntity) -SrcProcessNames @("*") -SrcUserInfos @($sourceUserEntity) -State 1     

DstEntityInfoAssetStatus     : 
DstEntityInfoAssetType       : 
DstEntityInfoDomain          : 
DstEntityInfoFqdn            : 
DstEntityInfoId              : g:o:04445453
DstEntityInfoIpv4Addresses   : 
DstEntityInfoIpv6Addresses   : 
DstEntityInfoName            : Cameras
DstEntityInfoOperatingSystem : 
DstEntityInfoProtectionState : 
DstEntityInfoSource          : 
ItemAdditionalPortsList      : {}
ItemCreatedAt                : 1694728775258
ItemCreatedBy                : m:13c49a4eb4fa90bbb948b6c8de5175ad2d36cfbc
ItemCreatedByName            : ModuleTesting
ItemDescription              : 
ItemDstPort                  : 443
ItemDstProcessNames          : {*}
ItemEnforcementSource        : 6
ItemExcludedSrcEntityInfos   : {}
ItemExcludedSrcProcesses     : {}
ItemFallbackToLoggedOnUser   : True
ItemId                       : c4aaf8bd-9979-4a77-991e-10573fd191aa
ItemMfaMethods               : {4}
ItemOverrideBuiltins         : True
ItemProtocolType             : 6
ItemRuleDuration             : 6
ItemSrcEntityInfos           : {All segmented assets}
ItemSrcProcessNames          : {*}
ItemSrcUserInfos             : {Any user}
ItemState                    : 1
ItemUpdatedAt                : 1694728775258
StateAssetId                 : 
StateIsAssetConnected        : 
StateLasDisconnectedAt       : 
StateProtectAt               : 
StateProtectionState         : 
```

This cmdlet creates an outbound MFA policy for the environment.
