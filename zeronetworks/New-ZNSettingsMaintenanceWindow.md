---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/new-znsettingsmaintenancewindow
schema: 2.0.0
---

# New-ZNSettingsMaintenanceWindow

## SYNOPSIS
Returns the maintenance window properties

## SYNTAX

```
New-ZNSettingsMaintenanceWindow [-AccountName <String>] [-IsDefault] [-Name <String>] [-StartTime <Int32>]
 [-Weekday <Int32>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Returns the maintenance window properties

## EXAMPLES

### Example 1: Create a maintenance window
```powershell
New-ZNSettingsMaintenanceWindow  -IsDefault:$false -Name "MaintWindow" -StartTime 1 -Weekday 1
```

```output
CreatedById   : m:ea53c6e1d0072c5974ceec597b64989274b7ba5f
CreatedByName : powershell
ItemCreatedAt : 1728096395670
ItemId        : e:m:pszG5Dda
ItemIsDefault : False
ItemName      : MaintWindow
ItemStartTime : 1
ItemUpdatedAt : 1728096395670
ItemWeekday   : 1
UpdatedById   : 
UpdatedByName : 
```

This cmdlet create a new maintenance window.

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

### -IsDefault
.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StartTime
0-24 in UTC.
1 would be 01:00-02:00UTC

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Weekday
Sunday is 1, Saturday is 7

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IMaintenanceWindowItem

## NOTES

## RELATED LINKS

