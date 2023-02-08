---
external help file:
Module Name: ZN.Api
online version: https://github.com/zn.api/update-znmfainboundpolicy
schema: 2.0.0
---

# Update-ZNMfaInboundPolicy

## SYNOPSIS
Returns the properties of the inbound MFA policy after updating.

## SYNTAX

```
Update-ZNMfaInboundPolicy -ReactivePolicyId <String> -AdditionalPortsList <IPortsListItem[]>
 -DstEntityInfoId <String> -DstPort <String> -DstProcessNames <String[]> -FallbackToLoggedOnUser
 -MfaMethods <Int32[]> -ProtocolType <Int32> -RuleDuration <Int32>
 -SrcEntityInfos <IReactivePolicyInboundBodySrcEntityInfosItem[]> -SrcProcessNames <String[]>
 -SrcUserInfos <IReactivePolicyInboundBodySrcUserInfosItem[]> -State <Int32> [-Description <String>]
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of the inbound MFA policy after updating.

## EXAMPLES

### Example 1: Update an inbound MFA policy
```powershell
#Get the policy
$mfaPolicy = Get-ZNMfaInboundPolicy -ReactivePolicyId 01d37aff-309e-4581-9f2a-c12c811b035e
#add a port
$mfaPolicy.ItemDstPort = $mfaPolicy.ItemDstPort+,",24"
Update-ZNMfaInboundPolicy -ReactivePolicyId $mfaPolicy.ItemId -DstEntityInfoId $mfaPolicy.DstEntityInfoId -DstPort $mfaPolicy.ItemDstPort -DstProcessNames $mfaPolicy.ItemDstProcessNames -FallbackToLoggedOnUser:$false -MfaMethods $mfaPolicy.ItemMfaMethods -ProtocolType $mfaPolicy.ItemProtocolType -RuleDuration $mfaPolicy.ItemRuleDuration -SrcEntityInfos $mfaPolicy.ItemSrcEntityInfos -SrcProcessNames $mfaPolicy.ItemSrcProcessNames -SrcUserInfos $mfaPolicy.ItemSrcUserInfos -RuleCreationMode $mfaPolicy.ItemRuleCreationMode -State $mfapolicy.ItemState
```

```output
DstEntityInfoId            : a:l:YjoLaKRG
DstEntityInfoName          : linuxserver
ItemCreatedAt              : 1666100652229
ItemCreatedBy              : m:86786c2f022cf2bd7dc38f165c98b4ee736c8c3b
ItemCreatedByName          : PowerShell
ItemDescription            : 
ItemDstPort                : 22-24
ItemDstProcessNames        : {*}
ItemFallbackToLoggedOnUser : False
ItemId                     : 01d37aff-309e-4581-9f2a-c12c811b035e
ItemMfaMethods             : {4}
ItemProtocolType           : 6
ItemRuleCreationMode       : 1
ItemRuleDuration           : 6
ItemSrcEntityInfos         : {Any asset}
ItemSrcProcessNames        : {*}
ItemSrcUserInfos           : {Any user}
ItemState                  : 1
ItemUpdatedAt              : 1666112928847
```

This cmdlet will update an inbound MFA policy

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

### -ReactivePolicyId
The id of the MFA policy

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

