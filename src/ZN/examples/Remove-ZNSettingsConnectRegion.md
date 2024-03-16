### Example 1: Delete a region from Connect settings
```powershell
$region = Get-ZNSettingsConnectRegion | where {$_.Name -eq "TestRegion"}
Remove-ZNSettingsConnectRegion -RegionId $region.Id
```

```output

```

This cmdlet deletes a region for Connect settings.
