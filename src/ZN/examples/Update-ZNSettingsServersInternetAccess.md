### Example 1: Update internet access
```powershell
$trusted = Get-ZNSettingsServerssTrustedInternet
$untrusted = New-ZNPortsList -Protocol tcp -Ports "80,443"
Update-ZNSettingsServerssInternetAccess -Trusted $trusted -Untrusted $untrusted
```

```output

```

This cmdlet updates the settings for servers internet access.
