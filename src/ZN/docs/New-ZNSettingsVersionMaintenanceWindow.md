---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/new-znsettingsversionmaintenancewindow
schema: 2.0.0
---

# New-ZNSettingsVersionMaintenanceWindow

## SYNOPSIS
Create a in-memory object for VersionMaintenanceWindow

## SYNTAX

### Protocol (Default)
```
New-ZNSettingsVersionMaintenanceWindow [-Description <String>] [<CommonParameters>]
```

### Empty
```
New-ZNSettingsVersionMaintenanceWindow -StartTime <Int32> -WeekDay <String> [<CommonParameters>]
```

## DESCRIPTION
Create a in-memory object for VersionMaintenanceWindow

## EXAMPLES

### Example 1: Create a maint window object
```powershell
$maintwindow = New-ZNSettingsVersionMaintenanceWindow -StartTime 0 -WeekDay Sunday
```

This cmdlet creates an in memory maintenance window object.

## PARAMETERS

### -Description
Description

```yaml
Type: System.String
Parameter Sets: Protocol
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StartTime
Start Time

```yaml
Type: System.Int32
Parameter Sets: Empty
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WeekDay
Day of the week

```yaml
Type: System.String
Parameter Sets: Empty
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.VersionMaintenanceWindow

## NOTES

## RELATED LINKS

