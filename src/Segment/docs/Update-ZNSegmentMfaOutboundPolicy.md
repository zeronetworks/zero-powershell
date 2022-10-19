---
external help file:
Module Name: ZN.Segment
online version: https://github.com/zn.segment/update-znsegmentmfaoutboundpolicy
schema: 2.0.0
---

# Update-ZNSegmentMfaOutboundPolicy

## SYNOPSIS
Update outbound MFA policy

## SYNTAX

```
Update-ZNSegmentMfaOutboundPolicy -ReactivePolicyId <String> -DstEntityInfoId <String> -DstPort <String>
 -FallbackToLoggedOnUser -MfaMethods <Int32[]> -ProtocolType <Int32> -RuleCreationMode <Int32>
 -RuleDuration <Int32> -SrcEntityInfos <IReactivePolicyOutboundBodySrcEntityInfosItem[]>
 -SrcProcessNames <String[]> -SrcUserInfos <IReactivePolicyOutboundBodySrcUserInfosItem[]> -State <Int32>
 [-Description <String>] [-DstProcessNames <String[]>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Update outbound MFA policy

## EXAMPLES

### Example 1: Update an inbound MFA policy
```powershell
#Get the policy
$mfaPolicy = Get-ZNSegmentMfaOutboundPolicy -ReactivePolicyId b307438a-5a02-49a0-a8e3-944c0558f0fe 
#add a port
$mfaPolicy.ItemDstPort = $mfaPolicy.ItemDstPort+,",23"
Update-ZNSegmentMfaOutboundPolicy -ReactivePolicyId $mfaPolicy.ItemId -DstEntityInfoId $mfaPolicy.DstEntityInfoId -DstPort $mfaPolicy.ItemDstPort -FallbackToLoggedOnUser:$false -MfaMethods $mfaPolicy.ItemMfaMethods -ProtocolType $mfaPolicy.ItemProtocolType -RuleCreationMode $mfaPolicy.ItemRuleCreationMode -RuleDuration $mfaPolicy.ItemRuleDuration -SrcEntityInfos $mfaPolicy.ItemSrcEntityInfos -SrcProcessNames $mfaPolicy.ItemSrcProcessNames  -SrcUserInfos $mfaPolicy.ItemSrcUserInfos -State $mfaPolicy.ItemState
```

```output
DstEntityInfoId            : a:t:oOkjcyED
DstEntityInfoName          : switch01
ItemCreatedAt              : 1665598259106
ItemCreatedBy              : 1f352ed0-86f1-454f-90a5-592c197c8000
ItemCreatedByName          : Zero Networks
ItemDescription            : 
ItemDstPort                : 22-23
ItemDstProcessNames        : {*}
ItemFallbackToLoggedOnUser : False
ItemId                     : b307438a-5a02-49a0-a8e3-944c0558f0fe
ItemMfaMethods             : {4}
ItemProtocolType           : 6
ItemRuleCreationMode       : 1
ItemRuleDuration           : 6
ItemSrcEntityInfos         : {All protected assets}
ItemSrcProcessNames        : {*}
ItemSrcUserInfos           : {Any user}
ItemState                  : 1
ItemUpdatedAt              : 1666114035566
```

This cmdlet will update an outbound MFA policy

## PARAMETERS

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

### -RuleCreationMode
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
Type: ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IReactivePolicyOutboundBodySrcEntityInfosItem[]
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
Type: ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IReactivePolicyOutboundBodySrcUserInfosItem[]
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

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IApiError

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAuthError

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IReactivePolicy

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`SRCENTITYINFOS <IReactivePolicyOutboundBodySrcEntityInfosItem[]>`: .
  - `Id <String>`: 

`SRCUSERINFOS <IReactivePolicyOutboundBodySrcUserInfosItem[]>`: .
  - `Id <String>`: 

## RELATED LINKS

