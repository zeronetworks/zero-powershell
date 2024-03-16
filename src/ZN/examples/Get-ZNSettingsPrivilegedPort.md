### Example 1: Get privileged ports settings
 settings
```powershell
Get-ZNSettingsPrivilegedPort
```

```output
ItemTcpPorts                  ItemUdpPorts
------------                  ------------
21-23,445,3389,5985-5986,9389 
```

This cmdlet returns the privileged ports settings.
