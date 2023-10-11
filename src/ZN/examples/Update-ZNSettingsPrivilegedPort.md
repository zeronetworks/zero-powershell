### Example 1: Update privileged port settings
```powershell
$privports = Get-ZNSettingsPrivilegedPort
Update-ZNSettingsPrivilegedPort -TcpPorts $privports.ItemTcpPorts -UdpPorts "1234"

ItemTcpPorts                  ItemUdpPorts
------------                  ------------
21-23,445,3389,5985-5986,9389 1234
```

This cmdlet updates privileged port settings.
