---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/protect-znassetsot
schema: 2.0.0
---

# Protect-ZNAssetsOt

## SYNOPSIS
Returns an empty response.

## SYNTAX

```
Protect-ZNAssetsOt -Items <String[]> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Returns an empty response.

## EXAMPLES

### Example 1: Move a single OT/IoT asset to segmented
```powershell
Protect-ZNAssetsOt -Items "a:t:oOkjcyED"
```

```output

```

This cmdlet will move an OT/IoT asset from learning to segemented in the envrionment.

### Example 2: Move all OT/IoT to segmented
```powershell
Protect-ZNAssetsOT -Items ((Get-ZNAssetsOt).Id)
```

```output

```

This sample will move all assets currently in learning to segmented.

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

