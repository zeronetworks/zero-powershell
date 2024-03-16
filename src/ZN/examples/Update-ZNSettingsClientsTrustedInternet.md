### Example 1: Update clients trusted internet
```powershell
$newPorts = New-ZNPortsList -Protocol TCP -Ports 80,443
Update-ZNSettingsClientsTrustedInternet -Ports @($newPorts)
```

```output

```

This cmdlet updates the client trusted internet settings.
