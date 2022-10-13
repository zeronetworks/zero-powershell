---
external help file:
Module Name: ZN.Segment
online version: https://test.comzn.segment/unprotect-znsegmentassetsot
schema: 2.0.0
---

# Unprotect-ZNSegmentAssetsOt

## SYNOPSIS
Unprotect OT/IoT asset

## SYNTAX

### UnprotectExpanded (Default)
```
Unprotect-ZNSegmentAssetsOt -Items <String[]> [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Unprotect
```
Unprotect-ZNSegmentAssetsOt -Body <IAssetBody> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Unprotect OT/IoT asset

## EXAMPLES

### Example 1: Remove an OT/IoT asset from segmentation
```powershell
Search-ZNSegmentAsset -Fqdn switch01
Unprotect-ZNSegmentAssetsOt -Items "a:t:oOkjcyED"
```

This cmdlet will remove an OT/IoT asset from segemenation.

## PARAMETERS

### -Body
.
To construct, see NOTES section for BODY properties and create a hash table.

```yaml
Type: ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAssetBody
Parameter Sets: Unprotect
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Items
.

```yaml
Type: System.String[]
Parameter Sets: UnprotectExpanded
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

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAssetBody

## OUTPUTS

### System.String

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAny

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAuthError

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`BODY <IAssetBody>`: .
  - `Items <String[]>`: 

## RELATED LINKS

