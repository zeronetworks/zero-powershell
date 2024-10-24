---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/get-znsettingsinactiveasset
schema: 2.0.0
---

# Get-ZNSettingsInactiveAsset

## SYNOPSIS
Get inactive assets settings configuration

## SYNTAX

```
Get-ZNSettingsInactiveAsset [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get inactive assets settings configuration

## EXAMPLES

### Example 1: Get inactive assets setting
```powershell
Get-ZNSettingsInactiveAsset
```

```output
LastActiveDurationInMonths
--------------------------
                         0
```

This cmdlet gets the inactive assets setting.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IInactiveAssetsConfig

## NOTES

## RELATED LINKS

