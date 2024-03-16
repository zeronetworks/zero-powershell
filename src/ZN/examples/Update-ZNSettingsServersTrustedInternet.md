### Example 1: Update servers trusted internet
```powershell
$newPorts = New-ZNPortsList -Protocol TCP -Ports 80,443
Update-ZNSettingsServersTrustedInternet -Ports @($newPorts)
```

```output

```

This cmdlet updates the servers trusted internet settings.
