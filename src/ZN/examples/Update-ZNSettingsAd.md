### Example 1: Update AD forest settings
```powershell
$forest = Get-ZNSettingsAd | where {$_.ActiveDirectoryInfoDomainName -eq "test.local"}
Update-ZNSettingsAd -ForestId $forest.ForestId -ActiveDirectoryInfoDomainControllerFqdn "newdc.test.local" -ActiveDirectoryInfoDomainName $forest.ActiveDirectoryInfoDomainName -ActiveDirectoryInfoUseLdaps:$forest.ActiveDirectoryInfoUseLdaps -ActiveDirectoryInfoUsername $forest.ActiveDirectoryInfoUsername -SetActiveDirectoryInfoPasswordCleartext "newpassword"
```

```output

```

This cmdlet updates AD settings.
