---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingslicense
schema: 2.0.0
---

# Get-ZNSettingsLicense

## SYNOPSIS
Get Subscription Licenses

## SYNTAX

```
Get-ZNSettingsLicense -LicenseType <String> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get Subscription Licenses

## EXAMPLES

### Example 1: Get license info
```powershell
Get-ZNSettingsLicense -LicenseType network
```

```output
ConfigInfoActivitiesRetentionDays : 30
ConfigInfoClientsLimit            : 
ConfigInfoEnableActivitySync      : True
ConfigInfoEndTime                 : 1898571600000
ConfigInfoK8SLicenseMode          : 1
ConfigInfoLicenseMode             : 1
ConfigInfoLimit                   : -1
ConfigInfoNodesLimit              : -1
ConfigInfoOtsLimit                : -1
ConfigInfoSelfTrialAvailable      : False
ConfigInfoServersLimit            : 
ConfigInfoStartTime               : 1646110800000
CountNodesCount                   : 1
CountTotalClientUsed              : 1
CountTotalOtsUsed                 : 0
CountTotalServerUsed              : 4
LicenseStateInUse                 : 
```

This cmdlet get license info.

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

