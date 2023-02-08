---
external help file:
Module Name: ZN.Api
online version: https://github.com/zn.api/invoke-znsimulatemfaoutboundpolicy
schema: 2.0.0
---

# Invoke-ZNSimulateMfaOutboundPolicy

## SYNOPSIS
Returns a list of outbound MFA policies that would match the simulation.

## SYNTAX

```
Invoke-ZNSimulateMfaOutboundPolicy -SimulationParams <IComponents1Tw47WoParametersSimulationparameterSchema>
 [-Limit <Int32>] [-Offset <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of outbound MFA policies that would match the simulation.

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
Limit the return results

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
Used to page through results

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
Set of properties to run for the MFA simulation
To construct, see NOTES section for SIMULATIONPARAMS properties and create a hash table.

```yaml
Type: ZeroNetworks.PowerShell.Cmdlets.Api.Models.IComponents1Tw47WoParametersSimulationparameterSchema
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

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`SIMULATIONPARAMS <IComponents1Tw47WoParametersSimulationparameterSchema>`: Set of properties to run for the MFA simulation
  - `[DstAssetId <String>]`: 
  - `[DstProcess <String>]`: 
  - `[Port <String>]`: 
  - `[ProtocolType <String>]`: 
  - `[SrcAssetId <String>]`: 
  - `[SrcProcess <String>]`: 
  - `[SrcUserId <String>]`: 

## RELATED LINKS

