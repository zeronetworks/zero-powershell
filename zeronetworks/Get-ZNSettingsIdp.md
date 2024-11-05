---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingsidp
schema: 2.0.0
---

# Get-ZNSettingsIdp

## SYNOPSIS
Get identity provider settings in Identity Providers

## SYNTAX

```
Get-ZNSettingsIdp [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get identity provider settings in Identity Providers

## EXAMPLES

### Example 1: Get Idp settings
```powershell
Get-ZNSettingsIdp
```

```output
IdentityProviderType IsDefault
-------------------- ---------
azure                False
```

This cmdlet returns the Identity Provider settings.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsIdpList

## NOTES

## RELATED LINKS

