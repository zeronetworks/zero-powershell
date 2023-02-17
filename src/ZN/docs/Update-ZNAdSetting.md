---
external help file:
Module Name: ZN.Api
online version: https://github.com/zeronetworkszn.api/update-znadsetting
schema: 2.0.0
---

# Update-ZNAdSetting

## SYNOPSIS
Set the AD settings in Asset Managment

## SYNTAX

```
Update-ZNAdSetting -Domain <String> -DomainControllerFqdn <String> -Password <String> -UseLdaps
 -Username <String> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Set the AD settings in Asset Managment

## EXAMPLES

### Example 1: Update Active Directory setting
```powershell
Update-ZNAdSetting -Domain zero.labs -DomainControllerFqdn dc1.zero.labs -Username znremotemanagement -Password "password" -UseLdaps:$false
```

This cmdlet updates an AD setting under Asset Management.

## PARAMETERS

### -Domain
FQDN of the AD domain

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DomainControllerFqdn
Domain Controller from AD Domain

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Password
Service Acount Password

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UseLdaps
Use LDAP or LDAPs

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Username
Service Account for Zero Networks

```yaml
Type: System.String
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsAdInfo

## NOTES

ALIASES

## RELATED LINKS

