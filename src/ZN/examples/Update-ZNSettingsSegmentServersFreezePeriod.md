### Example 1: Update the freeze period
```powershell
$freeze = Get-ZNSettingsSegmentServersFreezePeriod
Update-ZNSettingsSegmentServersFreezePeriod -FreezePeriodId $freeze.FreezeWindowId -StartTime $freeze.StartTime -EndTime (ConvertTo-ZNEpochMS 9/20/2026) -Description $freeze.Description
```

```output

```

This cmdlet updates a freeze period.
