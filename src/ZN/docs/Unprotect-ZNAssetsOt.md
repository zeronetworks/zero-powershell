---
external help file:
Module Name: ZN.Api
online version: https://github.com/zn.api/unprotect-znassetsot
schema: 2.0.0
---

# Unprotect-ZNAssetsOt

## SYNOPSIS
Returns and empty body.

## SYNTAX

```
Unprotect-ZNAssetsOt -Items <String[]> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Returns and empty body.

## EXAMPLES

### Example 1: Remove an OT/IoT asset from segmentation
```powershell
Search-ZNAsset -Fqdn switch01
Unprotect-ZNAssetsOt -Items "a:t:oOkjcyED"
```

This cmdlet will remove an OT/IoT asset from segemenation.

## PARAMETERS

### -Items
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAny

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

## RELATED LINKS

