---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingspamcyberark
schema: 2.0.0
---

# Get-ZNSettingsPamCyberark

## SYNOPSIS
Get CyberArk config

## SYNTAX

```
Get-ZNSettingsPamCyberark [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get CyberArk config

## EXAMPLES

### Example 1: Get PAM - CyberArk settings
```powershell
Get-ZNSettingsPamCyberark
```

```output
Address           : 1.1.1.1
CyberArkLogonType : 1
SecretsType       : 2
UserName          : test
VaultType         : 1
```

This cmdlet gets the PAM - CyberArk settings.

## PARAMETERS

### -AccountName
this value is per customer / partner

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: (Read-ZNJWTtoken $env:ZNApiKey).aud.split(".")[0]
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsCyberarkConfig

## NOTES

## RELATED LINKS

