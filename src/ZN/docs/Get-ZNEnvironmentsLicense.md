---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znenvironmentslicense
schema: 2.0.0
---

# Get-ZNEnvironmentsLicense

## SYNOPSIS
Get Subscription Licenses

## SYNTAX

```
Get-ZNEnvironmentsLicense -LicenseType <String> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get Subscription Licenses

## EXAMPLES

### Example 1: Get environment license
```powershell
Get-ZNEnvironmentsLicense -LicenseType network
```

```output
ConfigInfoActivitiesRetentionDays : 30
ConfigInfoClientsLimit            : 200
ConfigInfoEndTime                 : 1803591949000
ConfigInfoLicenseMode             : 1
ConfigInfoLimit                   : -1
ConfigInfoOtsLimit                : 100
ConfigInfoServersLimit            : 5000
ConfigInfoStartTime               : 1734471949000
CountTotalClientUsed              : 83
CountTotalOtsUsed                 : 3
CountTotalServerUsed              : 36
```

This cmdlet gets the environment license config.
Supported license types are network, identity, rpc and connect.

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

### -LicenseType
The license type

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ILicensesConfig

## NOTES

## RELATED LINKS

