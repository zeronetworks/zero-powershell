---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/new-znsettingsad
schema: 2.0.0
---

# New-ZNSettingsAd

## SYNOPSIS
Set the AD settings in Asset Managment

## SYNTAX

```
New-ZNSettingsAd [-AllowNtlmFallback] [-PrimaryDomainConfigDomainControllerFqdn <String>]
 [-PrimaryDomainConfigDomainName <String>] [-PrimaryDomainConfigPassword <String>]
 [-PrimaryDomainConfigUseLdaps] [-PrimaryDomainConfigUserFqdn <String>] [-UsePrimaryUserForAllDomains]
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Set the AD settings in Asset Managment

## EXAMPLES

### Example 1: Create an AD forest setting
```powershell
New-ZNSettingsAd -ActiveDirectoryInfoDomainControllerFqdn dc01.newforest.local -ActiveDirectoryInfoDomainName newforest.local -ActiveDirectoryInfoUsername znremotemanagment -PasswordCleartext "myPassword"
```

This cmdlet create an AD forest setting.

## PARAMETERS

### -AllowNtlmFallback
.

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

### -PrimaryDomainConfigDomainControllerFqdn
Domain Controller from AD Domain

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrimaryDomainConfigDomainName
FQDN of the AD domain

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrimaryDomainConfigPassword
password for the service account

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrimaryDomainConfigUseLdaps
Use LDAP or LDAPs

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

### -PrimaryDomainConfigUserFqdn
Service Account for Zero Networks

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UsePrimaryUserForAllDomains
.

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

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsAdInfoBody

## NOTES

## RELATED LINKS

