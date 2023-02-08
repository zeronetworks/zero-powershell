---
external help file:
Module Name: ZN.Api
online version: https://github.com/zn.api/test-znassetsprotection
schema: 2.0.0
---

# Test-ZNAssetsProtection

## SYNOPSIS
Returns a number of assets that are valid for protection.

## SYNTAX

```
Test-ZNAssetsProtection -Items <String[]> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Returns a number of assets that are valid for protection.

## EXAMPLES

### Example 1: Test an asset is ready for segmentation
```powershell
Search-ZNAsset -Fqdn WIN7.zero.labs
Test-ZNAssetsProtection -Items "a:a:5wiknOhs"
```

```output
1
```

This cmdlet will test if an asset is ready for segmentation

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

