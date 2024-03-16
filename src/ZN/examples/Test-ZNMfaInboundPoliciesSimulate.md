### Example 1: Simulate inbound MFA policy
```powershell
$destination = (Get-ZNMfaInboundPoliciesSimulateDestinationCandidate -Search DC01).Items
$sourceAsset = (Get-ZNMfaInboundPoliciesSimulateSourceCandidate -Search WC01).Items
$sourceUser = (Get-ZNMfaInboundPoliciesSimulateSourceUserCandidate -Search test).Items
Test-ZNMfaInboundPoliciesSimulate -DstAssetId $destination.Id -SrcAssetId $sourceAsset.Id -SrcUserId $sourceUser.Id -Port 3389 -ProtocolType 6
```

```output
DstAssetInfoAssetStatus            : 2
DstAssetInfoAssetType              : 2
DstAssetInfoDomain                 : posh.local
DstAssetInfoFqdn                   : DC01.posh.local
DstAssetInfoId                     : a:a:8ErCHXe8
DstAssetInfoIpv4Addresses          : {10.1.0.5}
DstAssetInfoIpv6Addresses          : {fe80::dd2c:f725:b57e:a4b1}
DstAssetInfoName                   : DC01
DstAssetInfoOperatingSystem        : Windows Server 2022 Datacenter
DstAssetInfoProtectionState        : 3
DstAssetInfoSource                 : 3
DstAssetInfoStateAssetId           : a:a:8ErCHXe8
DstAssetInfoStateIsAssetConnected  : True
DstAssetInfoStateLasDisconnectedAt : 
DstAssetInfoStateProtectAt         : 
DstAssetInfoStateProtectionState   : 3
OrderedReactivePolicies            : {61e73a6a-f038-40cd-adde-f93ef046b73d}
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

This cmdlet will simulate an inbound MFA policy.  If the parameters match a policy the policies will be listed in the OrderedReactivePolicies properties.
