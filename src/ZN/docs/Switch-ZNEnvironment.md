---
external help file:
Module Name: ZN.Api
online version: https://github.com/zeronetworkszn.api/switch-znenvironment
schema: 2.0.0
---

# Switch-ZNEnvironment

## SYNOPSIS
Change the Zero Networks environment token

## SYNTAX

### Name (Default)
```
Switch-ZNEnvironment -EnvironmentName <String> [-Confirm] [-WhatIf] [<CommonParameters>]
```

### EnvironmentId
```
Switch-ZNEnvironment -EnvironmentId <String> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Change the Zero Networks environment token

#.Link
https://github.com/zeronetworks/zn.api/switch-znenvironment

## EXAMPLES

### Example 1: Change Zero Networks Environment
```powershell
$env = Get-ZNEnvironment | where {$_.name -eq 'Zero Networks Demo'}
Switch-ZNEnvironment -EnvironmentId $env.Id
```

This cmdlet allows switching between Zero Networks environments when managing multiple environments.

## PARAMETERS

### -EnvironmentId
EnvironmentId

```yaml
Type: System.String
Parameter Sets: EnvironmentId
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnvironmentName
Environment Name

```yaml
Type: System.String
Parameter Sets: Name
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

## NOTES

ALIASES

## RELATED LINKS

