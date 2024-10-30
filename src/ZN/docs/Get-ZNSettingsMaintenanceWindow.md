---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znsettingsmaintenancewindow
schema: 2.0.0
---

# Get-ZNSettingsMaintenanceWindow

## SYNOPSIS
Returns the maintenance window properties

## SYNTAX

### List (Default)
```
Get-ZNSettingsMaintenanceWindow [-AccountName <String>] [<CommonParameters>]
```

### Get
```
Get-ZNSettingsMaintenanceWindow -MaintenanceWindowId <String> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns the maintenance window properties

## EXAMPLES

### Example 1: List maintenance windows
```powershell
Get-ZNSettingsMaintenanceWindow
```

```output
CreatedAt     : 1728092138778
CreatedById   : u:a:JnQxZS6j
CreatedByName : nicholas-ad
Id            : e:m:eCoheWFb
IsDefault     : True
Name          : Default
StartTime     : 4
UpdatedAt     : 1728092138778
UpdatedById   : 
UpdatedByName : 
Weekday       : 1
```

This cmdlet lists maintenance windows.

### Example 2: Get a maintenance window
```powershell
Get-ZNSettingsMaintenanceWindow -MaintenanceWindowId e:m:eCoheWFb
```

```output
CreatedAt     : 1728092138778
CreatedById   : u:a:JnQxZS6j
CreatedByName : nicholas-ad
Id            : e:m:eCoheWFb
IsDefault     : True
Name          : Default
StartTime     : 4
UpdatedAt     : 1728092138778
UpdatedById   : 
UpdatedByName : 
Weekday       : 1
```

This cmdlet gets a maintenance window.

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

### -MaintenanceWindowId
id of the maintence window

```yaml
Type: System.String
Parameter Sets: Get
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IMaintenanceWindowItems

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IMaintenanceWindowList

## NOTES

## RELATED LINKS

