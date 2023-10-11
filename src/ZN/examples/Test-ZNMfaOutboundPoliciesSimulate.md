### Example 1: Simulate an outbound MFA policy
```powershell
$destination = (Get-ZNMfaOutboundPoliciesSimulateDesinationCandidate -Search switch01).Items
$sourceAsset = (Get-ZNMfaOutboundPoliciesSimulateSourceCandidate -Search WC01).Items
$sourceUser = (Get-ZNMfaOutboundPoliciesSimulateSourceUserCandidate -Search test).Items
Test-ZNMfaOutboundPoliciesSimulate -DstAssetId $destination.Id -SrcAssetId $sourceAsset.Id -SrcUserId $sourceUser.Id -Port 22 -ProtocolType 6
DstAssetInfoAssetStatus            : 5
DstAssetInfoAssetType              : 15
DstAssetInfoDomain                 : 
DstAssetInfoFqdn                   : switch01
DstAssetInfoId                     : a:t:aCxJya46
DstAssetInfoIpv4Addresses          : {192.168.2.7}
DstAssetInfoIpv6Addresses          : {}
DstAssetInfoName                   : switch01
DstAssetInfoOperatingSystem        : 
DstAssetInfoProtectionState        : 1
DstAssetInfoSource                 : 7
DstAssetInfoStateAssetId           : 
DstAssetInfoStateIsAssetConnected  : 
DstAssetInfoStateLasDisconnectedAt : 
DstAssetInfoStateProtectAt         : 
DstAssetInfoStateProtectionState   : 
OrderedReactivePolicies            : {}
SrcAssetInfoAssetStatus            : 7
SrcAssetInfoAssetType              : 1
SrcAssetInfoDomain                 : posh.local
SrcAssetInfoFqdn                   : WC01.posh.local
SrcAssetInfoId                     : a:a:OtfLGUBq
SrcAssetInfoIpv4Addresses          : {10.1.0.8}
SrcAssetInfoIpv6Addresses          : {}
SrcAssetInfoName                   : WC01
SrcAssetInfoOperatingSystem        : Windows 11 Enterprise
SrcAssetInfoProtectionState        : 5
SrcAssetInfoSource                 : 3
SrcAssetInfoStateAssetId           : a:a:OtfLGUBq
SrcAssetInfoStateIsAssetConnected  : True
SrcAssetInfoStateLasDisconnectedAt : 
SrcAssetInfoStateProtectAt         : 
SrcAssetInfoStateProtectionState   : 5
```

This cmdlet will simulate an outbound MFA policy.  If the parameters match a policy the policies will be listed in the OrderedReactivePolicies properties.
