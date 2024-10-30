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
