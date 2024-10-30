---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znsettingstrustedinternetaddress
schema: 2.0.0
---

# Get-ZNSettingsTrustedInternetAddress

## SYNOPSIS
Get Trusted Internet addresses settings in System

## SYNTAX

```
Get-ZNSettingsTrustedInternetAddress [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get Trusted Internet addresses settings in System

## EXAMPLES

### Example 1: Get Trusted Internet settings
```powershell
Get-ZNSettingsTrustedInternetAddress
```

```output
1.1.1.1
```

This cmdlet returns the Trusted Internet settings.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsTrustedInternetAddresses

## NOTES

## RELATED LINKS

