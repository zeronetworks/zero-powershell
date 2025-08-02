---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingsk8sapplicationslabel
schema: 2.0.0
---

# Get-ZNSettingsK8SApplicationsLabel

## SYNOPSIS
Get K8s application label settings

## SYNTAX

```
Get-ZNSettingsK8SApplicationsLabel [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get K8s application label settings

## EXAMPLES

### Example 1: Get K8s application settings
```powershell
Get-ZNSettingsK8SApplicationsLabel
```

```output
Label
-----
app
```

This cmdlet gets the K8s application settings.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsK8SApplicationsLabel

## NOTES

## RELATED LINKS

