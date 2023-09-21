### Example 1: {{ Add title here }}
```powershell
$forest = Get-ZNSettingsAd | where {$_.ActiveDirectoryInfoDomainName -eq "newforest.local"}
New-ZNSettingsAdSecondary -ForestId $$forest.ForestId -Dc dc.child.newforest.local -Domain child.newforest.local


```

This cmdlet adds a secondary domain in AD settings.
