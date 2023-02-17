---
external help file:
Module Name: ZN.Api
online version: https://github.com/zeronetworkszn.api/invoke-znextendassetqueue
schema: 2.0.0
---

# Invoke-ZNExtendAssetQueue

## SYNOPSIS
Returns an empty object.

## SYNTAX

### ExtendExpanded (Default)
```
Invoke-ZNExtendAssetQueue [-ExtendByDays <Int32>] [-Items <String[]>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### Extend
```
Invoke-ZNExtendAssetQueue -Body <IQueueExtendBody> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Returns an empty object.

## EXAMPLES

### Example 1: Extend an asset learning time
```powershell
Invoke-ZNExtendAssetQueue -Items @((Search-ZNAsset -Fqdn fs1.zero.labs)) -ExtendByDays 14
```

This cmdlet will extend the learning time of an asset in the environment.

## PARAMETERS

### -Body
.
To construct, see NOTES section for BODY properties and create a hash table.

```yaml
Type: ZeroNetworks.PowerShell.Cmdlets.Api.Models.IQueueExtendBody
Parameter Sets: Extend
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -ExtendByDays
number of days

```yaml
Type: System.Int32
Parameter Sets: ExtendExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Items
.

```yaml
Type: System.String[]
Parameter Sets: ExtendExpanded
Aliases:

Required: False
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IQueueExtendBody

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAny

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`BODY <IQueueExtendBody>`: .
  - `[ExtendByDays <Int32?>]`: number of days
  - `[Items <String[]>]`: 

## RELATED LINKS

