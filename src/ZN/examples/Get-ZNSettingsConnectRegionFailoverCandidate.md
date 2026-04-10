### Example 1: List failover candidates
```powershell
$region = (Get-ZNSettingsConnectRegion)[0]
Get-ZNSettingsConnectRegionFailoverCandidate -RegionId $region.Id
```

```output
Id           Name
--           ----
r:a:1lrzUVlj Failover
```

This cmdlet lists Connect region failover candidates.
