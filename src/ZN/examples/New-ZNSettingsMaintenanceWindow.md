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
