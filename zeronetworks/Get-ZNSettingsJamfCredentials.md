---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingsjamfcredentials
schema: 2.0.0
---

# Get-ZNSettingsJamfCredentials

## SYNOPSIS
Returns the properties for JAMF Credentials Settings.

## SYNTAX

```
Get-ZNSettingsJamfCredentials [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns the properties for JAMF Credentials Settings.

## EXAMPLES

### Example 1: Get JAMF settings
```powershell
Get-ZNSettingsJamfCredentials
```

This cmdlet returns the Jamf settings.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsJamfCredentials

## NOTES

## RELATED LINKS

