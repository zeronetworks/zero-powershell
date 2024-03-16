---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/test-znmfaoutboundpoliciessimulate
schema: 2.0.0
---

# Test-ZNMfaOutboundPoliciesSimulate

## SYNOPSIS
Returns a list of outbound MFA policies that would match the simulation.

## SYNTAX

```
Test-ZNMfaOutboundPoliciesSimulate -DstAssetId <String> -Port <Int32> -ProtocolType <Int32>
 -SrcAssetId <String> -SrcUserId <String> [-DstProcess <String>] [-SrcProcess <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of outbound MFA policies that would match the simulation.

## EXAMPLES

### Example 1: Simulate an outbound MFA policy
```powershell
$destination = (Get-ZNMfaOutboundPoliciesSimulateDesinationCandidate -Search switch01).Items
$sourceAsset = (Get-ZNMfaOutboundPoliciesSimulateSourceCandidate -Search WC01).Items
$sourceUser = (Get-ZNMfaOutboundPoliciesSimulateSourceUserCandidate -Search test).Items
Test-ZNMfaOutboundPoliciesSimulate -DstAssetId $destination.Id -SrcAssetId $sourceAsset.Id -SrcUserId $sourceUser.Id -Port 22 -ProtocolType 6
```

```output
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

This cmdlet will simulate an outbound MFA policy.
If the parameters match a policy the policies will be listed in the OrderedReactivePolicies properties.

## PARAMETERS

### -DstAssetId
Id of dest asset

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DstProcess
Dest process

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Port
port

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProtocolType
protocol type

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SrcAssetId
Src asset id

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SrcProcess
Src process

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SrcUserId
Id of src user

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IOrderedReactivePoliciesList

## NOTES

## RELATED LINKS

