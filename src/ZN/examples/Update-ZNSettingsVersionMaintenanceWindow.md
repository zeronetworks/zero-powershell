### Example 1: Update maint window
```powershell
$maintwindow = New-ZNSettingsVersionMaintenanceWindow -StartTime 0 -WeekDay Sunday
Update-ZNSettingsVersionMaintenanceWindow -Product segment-server -MaintenanceWindows @($maintwindow)
```

```output

```

This cmdlet updates a product maintenance window.
