### Example 1: Update clients untrusted internet
```powershell
$newPorts = New-ZNPortsList -Protocol TCP -Ports 80,443
Update-ZNSettingsClientsUntrustedInternet -Ports @($newPorts)
```

```output

```

This cmdlet updates the client untrusted internet settings.
