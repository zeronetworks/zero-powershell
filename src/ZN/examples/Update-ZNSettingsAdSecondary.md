### Example 1: Update a secondary domain
```powershell
$forest = Get-ZNSettingsAd | where {$_.ActiveDirectoryInfoDomainName -eq "test.local"}
Update-ZNSettingsAdSecondary -forest $forest.ForestId -DomainId child.test.local -Dc newdc.child.test.local
```

```output

```

This cmdlet updates the settings for a Secondary domain in AD settings.
