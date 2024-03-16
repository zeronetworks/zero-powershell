### Example 1: Update a Connect server
```powershell
$server = Get-ZNSettingsConnectServer
Update-ZNSettingsConnectServer -ConnectServerId $server.Id -PublicPort 53000
```

```output

```

This cmdlet updates a Connect server.
