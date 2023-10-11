### Example 1: Create an AD forest setting
```powershell
New-ZNSettingsAd -ActiveDirectoryInfoDomainControllerFqdn dc01.newforest.local -ActiveDirectoryInfoDomainName newforest.local -ActiveDirectoryInfoUsername znremotemanagment -PasswordCleartext "myPassword"


```

This cmdlet create an AD forest setting.
