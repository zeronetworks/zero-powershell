### Example 1: Update mail notifications
```powershell
Update-ZNNotificationSetting -AssetProtected:$true -AssetQueued:$false -AssetUnprotected:$true -AssetPostponed:$true

AssetProtected AssetProtected AssetQueued AssetUnprotected
-------------- -------------- ----------- ----------------
True           False          True        True
```

This cmdlet updates the Mail notifications setting under System.
