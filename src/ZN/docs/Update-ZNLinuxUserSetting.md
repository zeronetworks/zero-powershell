---
external help file:
Module Name: ZN.Api
online version: https://github.com/zeronetworkszn.api/update-znlinuxusersetting
schema: 2.0.0
---

# Update-ZNLinuxUserSetting

## SYNOPSIS
Update the linux user settings in Asset Managment

## SYNTAX

```
Update-ZNLinuxUserSetting -Password <String> -PrivateKey <String> -Username <String> [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Update the linux user settings in Asset Managment

## EXAMPLES

### Example 1: Update linux user setting
```powershell
Update-ZNLinuxUserSetting -Username zn-admin -Password "NewPassword" -PrivateKey "Key"
```

This cmdlet updates the Linux user setting under Asset Management.

## PARAMETERS

### -Password
password for the linux user

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

### -PrivateKey
private key for the linux user

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

### -Username
the linux user name

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

### System.String

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

## RELATED LINKS

