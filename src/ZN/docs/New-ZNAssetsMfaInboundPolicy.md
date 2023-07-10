---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/new-znassetsmfainboundpolicy
schema: 2.0.0
---

# New-ZNAssetsMfaInboundPolicy

## SYNOPSIS
Returns the properties of the inbound MFA policy after creation.

## SYNTAX

```
New-ZNAssetsMfaInboundPolicy -AssetId <String> -AdditionalPortsList <IPortsListItem[]>
 -DstEntityInfoId <String> -DstPort <String> -DstProcessNames <String[]> -FallbackToLoggedOnUser
 -MfaMethods <Int32[]> -OverrideBuiltins -ProtocolType <Int32> -RuleDuration <Int32>
 -SrcEntityInfos <IReactivePolicyInboundBodySrcEntityInfosItem[]> -SrcProcessNames <String[]>
 -SrcUserInfos <IReactivePolicyInboundBodySrcUserInfosItem[]> -State <Int32> [-Description <String>]
 [-ExcludedSrcEntityInfos <String[]>] [-ExcludedSrcProcesses <String[]>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of the inbound MFA policy after creation.

## EXAMPLES

### Example 1: Create inbound MFA policy for a specific asset
```powershell
$destination = (Get-ZNAssetsMfaInboundPoliciesDestinationCandidate -AssetId (Search-ZNAsset -fqdn WC01.posh.local) -Search wc01).Items
$source = (Get-ZNAssetsMfaInboundPoliciesSourceCandidate -AssetId (Search-ZNAsset -fqdn WC01.posh.local) -search "Any Asset").Items
$sourceEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyInboundBodySrcEntityInfosItem]::new()
$sourceEntity.Id = $source.Id
$sourceUser = (Get-ZNAssetsMfaInboundPoliciesSourceUserCandidate -AssetId (Search-ZNAsset -fqdn WC01.posh.local) -search "Any User").Items
$sourceUserEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyInboundBodySrcUserInfosItem]::new()
$sourceUserEntity.Id = $sourceUser.Id
$portsList = New-ZNPortsList -Empty
New-ZNAssetsMfaInboundPolicy -AssetId (Search-ZNAsset -fqdn WC01.posh.local) -AdditionalPortsList $portsList -DstEntityInfoId $destination.Id -DstPort "22" -DstProcessNames @("*") -FallbackToLoggedOnUser -MfaMethods @(4) -OverrideBuiltins -ProtocolType 6 -RuleDuration 6 -SrcEntityInfos @($sourceEntity) -SrcProcessNames @("*") -SrcUserInfos @($sourceUserEntity) -State 1 
```

```output
DstEntityInfoAssetStatus     : 7
DstEntityInfoAssetType       : 1
DstEntityInfoDomain          : posh.local
DstEntityInfoFqdn            : WC01.posh.local
DstEntityInfoId              : a:a:OtfLGUBq
DstEntityInfoIpv4Addresses   : {10.1.0.8}
DstEntityInfoIpv6Addresses   : {}
DstEntityInfoName            : WC01
DstEntityInfoOperatingSystem : Windows 11 Enterprise
DstEntityInfoProtectionState : 5
DstEntityInfoSource          : 3
ItemAdditionalPortsList      : {}
ItemCreatedAt                : 1683747950840
ItemCreatedBy                : m:13c49a4eb4fa90bbb948b6c8de5175ad2d36cfbc
ItemCreatedByName            : ModuleTesting
ItemDescription              : 
ItemDstPort                  : 22
ItemDstProcessNames          : {*}
ItemEnforcementSource        : 6
ItemExcludedSrcEntityInfos   : {}
ItemExcludedSrcProcesses     : {}
ItemFallbackToLoggedOnUser   : True
ItemId                       : ec942113-4635-4e16-8cc0-d88c72199126
ItemMfaMethods               : {4}
ItemOverrideBuiltins         : True
ItemProtocolType             : 6
ItemRuleDuration             : 6
ItemSrcEntityInfos           : {Any asset}
ItemSrcProcessNames          : {*}
ItemSrcUserInfos             : {Any user}
ItemState                    : 1
ItemUpdatedAt                : 1683747950840
StateAssetId                 : a:a:OtfLGUBq
StateIsAssetConnected        : True
StateLasDisconnectedAt       : 
StateProtectAt               : 
StateProtectionState         : 5
```

This cmdlet creates an inbound MFA policy for the environment.

## PARAMETERS

### -AdditionalPortsList
.
To construct, see NOTES section for ADDITIONALPORTSLIST properties and create a hash table.

```yaml
Type: ZeroNetworks.PowerShell.Cmdlets.Api.Models.IPortsListItem[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AssetId
assetId to filter on

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

### -Description
.

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

### -DstEntityInfoId
.

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

### -DstPort
.

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

### -DstProcessNames
.

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExcludedSrcEntityInfos
.

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExcludedSrcProcesses
.

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FallbackToLoggedOnUser
.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MfaMethods
.

```yaml
Type: System.Int32[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OverrideBuiltins
.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProtocolType
.

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

### -RuleDuration
.

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

### -SrcEntityInfos
.
To construct, see NOTES section for SRCENTITYINFOS properties and create a hash table.

```yaml
Type: ZeroNetworks.PowerShell.Cmdlets.Api.Models.IReactivePolicyInboundBodySrcEntityInfosItem[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SrcProcessNames
.

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SrcUserInfos
.
To construct, see NOTES section for SRCUSERINFOS properties and create a hash table.

```yaml
Type: ZeroNetworks.PowerShell.Cmdlets.Api.Models.IReactivePolicyInboundBodySrcUserInfosItem[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -State
1=Enabled, 2=Disabled

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

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IReactivePolicy

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


ADDITIONALPORTSLIST <IPortsListItem[]>: .
  - `[Ports <String>]`: 
  - `[ProtocolType <Int32?>]`: 

SRCENTITYINFOS <IReactivePolicyInboundBodySrcEntityInfosItem[]>: .
  - `Id <String>`: 

SRCUSERINFOS <IReactivePolicyInboundBodySrcUserInfosItem[]>: .
  - `Id <String>`: 

## RELATED LINKS
