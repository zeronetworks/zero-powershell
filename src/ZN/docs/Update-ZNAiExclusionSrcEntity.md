---
external help file:
Module Name: ZN.Api
online version: https://github.com/zeronetworkszn.api/update-znaiexclusionsrcentity
schema: 2.0.0
---

# Update-ZNAiExclusionSrcEntity

## SYNOPSIS
Set AI source entities to ignore during learning.

## SYNTAX

```
Update-ZNAiExclusionSrcEntity -Body <String[]> [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Set AI source entities to ignore during learning.

## EXAMPLES

### Example 1: Update AI Exclusion settings for excluded sources
```powershell
Update-ZNAiExclusionSrcEntity -Body (Search-ZNAsset -Fqdn dc1.zero.labs)
```

This cmdlet updates the AI excluded sources under Data Collection.

### Example 2: Add a setting to the current settings.
```powershell
$excludedSources = @()
$excludedSources += (Get-ZNAiExclusionSrcEntity).Id
Update-ZNAiExclusionSrcEntity -Body ($excludedSources += (Search-ZNAsset -Fqdn fs1.zero.labs))
```

```output
   
```

Use exisitng settings to update or add ports or processes.

## PARAMETERS

### -Body
Array of PutContentSchemaItem

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -PassThru
Returns true when the command succeeds

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
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

### System.String[]

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

## RELATED LINKS

