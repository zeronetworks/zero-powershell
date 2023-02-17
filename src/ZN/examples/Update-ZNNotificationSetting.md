### Example 1: Update mail notifications
```powershell
Update-ZNNotificationSetting -AssetProtected:$true -AssetQueued:$false -AssetUnprotected:$true
```

```output
AssetProtected AssetQueued AssetUnprotected
-------------- ----------- ----------------
True           False       True
```

This cmdlet updates the Mail notifications setting under System.
