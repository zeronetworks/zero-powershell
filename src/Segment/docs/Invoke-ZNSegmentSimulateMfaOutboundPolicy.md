---
external help file:
Module Name: ZN.Segment
online version: https://github.com/zn.segment/invoke-znsegmentsimulatemfaoutboundpolicy
schema: 2.0.0
---

# Invoke-ZNSegmentSimulateMfaOutboundPolicy

## SYNOPSIS
Simulate outbound MFA access

## SYNTAX

```
Invoke-ZNSegmentSimulateMfaOutboundPolicy
 -SimulationParams <IComponents1Tw47WoParametersSimulationparameterSchema> [-Limit <Int32>] [-Offset <Int32>]
 [<CommonParameters>]
```

## DESCRIPTION
Simulate outbound MFA access

## EXAMPLES

### Example 1: {{ Add title here }}
```powershell
{{ Add code here }}
```

```output
{{ Add output here }}
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
{{ Add code here }}
```

```output
{{ Add output here }}
```

{{ Add description here }}

## PARAMETERS

### -Limit
.

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 10
Accept pipeline input: False
Accept wildcard characters: False
```

### -Offset
.

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SimulationParams
.
To construct, see NOTES section for SIMULATIONPARAMS properties and create a hash table.

```yaml
Type: ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IComponents1Tw47WoParametersSimulationparameterSchema
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

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IApiError

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAuthError

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IOrderedReactivePoliciesList

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`SIMULATIONPARAMS <IComponents1Tw47WoParametersSimulationparameterSchema>`: .
  - `[DstAssetId <String>]`: 
  - `[DstProcess <String>]`: 
  - `[Port <String>]`: 
  - `[ProtocolType <String>]`: 
  - `[SrcAssetId <String>]`: 
  - `[SrcProcess <String>]`: 
  - `[SrcUserId <String>]`: 

## RELATED LINKS

