### Example 1: Update internet access
```powershell
$trusted = Get-ZNSettingsClientsTrustedInternet
$untrusted = New-ZNPortsList -Protocol tcp -Ports "80,443"
Update-ZNSettingsClientsInternetAccess -Trusted $trusted -Untrusted $untrusted
```

```output

```

This cmdlet updates the settings for clients internet access.
