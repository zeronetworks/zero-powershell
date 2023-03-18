---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/update-zndefaultapplicationsetting
schema: 2.0.0
---

# Update-ZNDefaultApplicationSetting

## SYNOPSIS
Update the Default SSO Application settings in Identity Providers

## SYNTAX

```
Update-ZNDefaultApplicationSetting -Application <Int32> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Update the Default SSO Application settings in Identity Providers

## EXAMPLES

### Example 1: Set the default application
```powershell
Update-ZNDefaultApplicationSetting -Application 2
```

This cmdlet updates the default application setting under Identity Providers.
1 for Admin portal, 2 for Access portal.

## PARAMETERS

### -Application
1-Admin Portal, 2-Access Portal

```yaml
Type: System.Int32
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

