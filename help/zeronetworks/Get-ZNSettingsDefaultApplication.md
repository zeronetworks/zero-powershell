---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/get-znsettingsdefaultapplication
schema: 2.0.0
---

# Get-ZNSettingsDefaultApplication

## SYNOPSIS
Get Default SSO Application settings in Identity Providers

## SYNTAX

```
Get-ZNSettingsDefaultApplication [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get Default SSO Application settings in Identity Providers

## EXAMPLES

### Example 1: Get Default SSO application settings
```powershell
Get-ZNSettingsDefaultApplication
```

```output
1
```

This cmdlet returns the default SSO application settings.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsIdpDefaultApplication1

## NOTES

## RELATED LINKS

