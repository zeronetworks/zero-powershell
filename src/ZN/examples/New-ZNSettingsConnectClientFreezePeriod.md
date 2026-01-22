### Example 1: Create a freeze period
```powershell
New-ZNSettingsConnectClientFreezePeriod -StartTime (ConvertTo-ZNEpochMS  9/1/2026) -EndTime (ConvertTo-ZNEpochMS 9/15/2026) -Description SeptFreeze
```

```output
FreezeWindowId
--------------
e61b2086-5476-41d2-afa7-cadfa749ad2e
```

This cmldet creates a new freeze period for connect clients.
