### Example 1: Update a Connect region
```powershell
$region = Get-ZNSettingsConnectRegion | where {$_.Name -eq "test"}
Update-ZNSettingsConnectRegion -RegionId $region.Id -DnsServersIPAddressList $region.DnsServersIPAddressList -IPAddress $region.IPAddress -DnsSuffixesList @("test.local") -Name $region.Name

```

This cmdlet updates a Connect region setting.
