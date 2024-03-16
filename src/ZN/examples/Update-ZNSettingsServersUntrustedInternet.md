### Example 1: Update servers untrusted internet
```powershell
$newPorts = New-ZNPortsList -Protocol TCP -Ports 80,443
Update-ZNSettingsServersUntrustedInternet -Ports @($newPorts)
```

```output

```

This cmdlet updates the servers untrusted internet settings.
