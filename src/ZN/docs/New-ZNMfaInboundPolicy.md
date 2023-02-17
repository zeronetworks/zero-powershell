---
external help file:
Module Name: ZN.Api
online version: https://github.com/zeronetworkszn.api/new-znmfainboundpolicy
schema: 2.0.0
---

# New-ZNMfaInboundPolicy

## SYNOPSIS
Returns the properties of the inbound MFA policy after creation.

## SYNTAX

```
New-ZNMfaInboundPolicy -AdditionalPortsList <IPortsListItem[]> -DstEntityInfoId <String> -DstPort <String>
 -DstProcessNames <String[]> -FallbackToLoggedOnUser -MfaMethods <Int32[]> -ProtocolType <Int32>
 -RuleDuration <Int32> -SrcEntityInfos <IReactivePolicyInboundBodySrcEntityInfosItem[]>
 -SrcProcessNames <String[]> -SrcUserInfos <IReactivePolicyInboundBodySrcUserInfosItem[]> -State <Int32>
 [-Description <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of the inbound MFA policy after creation.

## EXAMPLES

### Example 1: Create inbound MFA policy
```powershell
$destination = (Get-ZNMfaInboundPoliciesDestinationCandidate -Search "linuxserver").Items
$source = (Get-ZNMfaInboundPoliciesSourceCandidate -search "Any Asset").Items
$sourceEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyInboundBodySrcEntityInfosItem]::new()
$sourceEntity.Id = $source.Id
$sourceUser = (Get-ZNMfaInboundPoliciesSourceUserCandidate -search "Any User").Items
$sourceUserEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyInboundBodySrcUserInfosItem]::new()
$sourceUserEntity.Id = $sourceUser.Id
New-ZNMfaInboundPolicy -DstEntityInfoId $destination.Id -DstPort "22" -DstProcessNames @("*") -FallbackToLoggedOnUser -MfaMethods @(4) -ProtocolType 6 -RuleDuration 6 -SrcEntityInfos @($sourceEntity) -SrcProcessNames @("*") -SrcUserInfos @($sourceUserEntity) -RuleCreationMode 1 -State 1
```

```output
DstEntityInfoId            : a:l:YjoLaKRG
DstEntityInfoName          : linuxserver
ItemCreatedAt              : 1666114167336
ItemCreatedBy              : m:86786c2f022cf2bd7dc38f165c98b4ee736c8c3b
ItemCreatedByName          : PowerShell
ItemDescription            : 
ItemDstPort                : 22
ItemDstProcessNames        : {*}
ItemFallbackToLoggedOnUser : True
ItemId                     : e1db180f-e435-498c-ae17-59651f3c3dc3
ItemMfaMethods             : {4}
ItemProtocolType           : 6
ItemRuleCreationMode       : 1
ItemRuleDuration           : 6
ItemSrcEntityInfos         : {Any asset}
ItemSrcProcessNames        : {*}
ItemSrcUserInfos           : {Any user}
ItemState                  : 1
ItemUpdatedAt              : 1666114167336
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


`ADDITIONALPORTSLIST <IPortsListItem[]>`: .
  - `[Ports <String>]`: 
  - `[ProtocolType <Int32?>]`: 

`SRCENTITYINFOS <IReactivePolicyInboundBodySrcEntityInfosItem[]>`: .
  - `Id <String>`: 

`SRCUSERINFOS <IReactivePolicyInboundBodySrcUserInfosItem[]>`: .
  - `Id <String>`: 

## RELATED LINKS

