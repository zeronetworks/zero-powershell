---
external help file:
Module Name: ZN.Api
online version: https://github.com/zeronetworkszn.api/get-znenvironment
schema: 2.0.0
---

# Get-ZNEnvironment

## SYNOPSIS
List the Zero Networks environments

## SYNTAX

```
Get-ZNEnvironment [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
List the Zero Networks environments

#.Link
https://github.com/zeronetworks/zn.api/get-znenvironment

## EXAMPLES

### Example 1: List available environments
```powershell
Get-ZNEnvironment
```

```output
id           : 15aef161-624d-49f1-a485-5e4c16948ab8
tenantId     : e0fb6f31-b509-441c-acef-21d3ac95d7c4
lastActiveAt : 1675689294007
userRole     : 1
name         : webinar 1

id           : 6a12bde0-a6fa-4775-aed2-713bdb5e8c56
tenantId     : 01db040c-371f-4312-ba36-f8886969530f
lastActiveAt : 1649346549938
userRole     : 1
name         : webinar 2

id           : 8e71e563-565b-4334-b304-d2d359276c2c
tenantId     : 35659e40-c665-4330-ace1-777ce3f9f240
lastActiveAt : 1675954378307
userRole     : 1
name         : Zero Networks Demo
```

This cmdlet returns available Zero Networks enviroments for switching.

## PARAMETERS

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

## NOTES

ALIASES

## RELATED LINKS

