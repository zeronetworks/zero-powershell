### Example 1: Delete a forest from AD settings
```powershell
$forest = Get-ZNSettingsAd | where {$_.ActiveDirectoryInfoDomainName -eq "newforest.local"}
Remove-ZNSettingsAd -ForestId $forest.ForestId

```

This cmdlet deletes a forest from AD settings.
