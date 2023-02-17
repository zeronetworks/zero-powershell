### Example 1: Update Asset Monitoring setting
```powershell
Update-ZNMonitoredGroupSetting -GroupId (Get-ZNMonitoredGroupCandidatesSetting -Search "All AD assets").Items.Id -IsEnabled
```

```output
IsEnabled
---------
True
```

This cmdlet updates the Active Direcoty Asset Monitoring control setting under Asset Management.

