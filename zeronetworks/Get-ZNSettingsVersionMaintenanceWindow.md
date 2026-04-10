---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingsversionmaintenancewindow
schema: 2.0.0
---

# Get-ZNSettingsVersionMaintenanceWindow

## SYNOPSIS
Get all version maintenance windows

## SYNTAX

```
Get-ZNSettingsVersionMaintenanceWindow -Product <String> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get all version maintenance windows

## EXAMPLES

### Example 1: Get maintenance window for a product
```powershell
Get-ZNSettingsVersionMaintenanceWindow -Product segment-server
```

```output
Description     : 
DurationNanos   : 0
DurationSeconds : 7200
StartTime       : 4
Weekday         : 1
```

This cmdlet gets a product maintenance window.

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

### -Product
Product type for which to modify or fetch the version maintenance window

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IVersionMaintenanceWindowList

## NOTES

## RELATED LINKS

