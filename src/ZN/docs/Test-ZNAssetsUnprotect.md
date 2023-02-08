---
external help file:
Module Name: ZN.Api
online version: https://github.com/zn.api/test-znassetsunprotect
schema: 2.0.0
---

# Test-ZNAssetsUnprotect

## SYNOPSIS
Returns a number of assets that are valid to unprotect.

## SYNTAX

```
Test-ZNAssetsUnprotect -Items <String[]> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Returns a number of assets that are valid to unprotect.

## EXAMPLES

### Example 1: Test an asset is can be removed from protection
```powershell
Search-ZNAsset -Fqdn dc1.zero.labs
Test-ZNAssetsUnprotect -Items "a:a:ZgBWOMyc"
```

```output
1
```

This cmdlet will test if an asset is can be removed from segmentation.

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

### System.Int32

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

## RELATED LINKS

