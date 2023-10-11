### Example 1: Delete a forest from AD settings
```powershell
$forest = Get-ZNSettingsAd | where {$_.ActiveDirectoryInfoDomainName -eq "posh.local"}
Remove-ZNSettingsAdSecondary -DomainId $forest.SecondaryDomains[0].Domain -ForestId $forest.ForestId
```

This cmdlet deletes a forest from AD settings.
