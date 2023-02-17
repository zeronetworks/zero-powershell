### Example 1: Update AI Exclusion settings for clients and servers
```powershell
Update-ZNAiExclusionNetworkBoth -Icmp -ProcessesList @()  -TcpPorts "" -UdpPorts ""
```

```output
Icmp ProcessesList TcpPorts UdpPorts
---- ------------- -------- --------
True {}     
```

This cmdlet updates the AI exclusions for clients and servers under Data Collection.

### Example 2: Add a setting to the current settings.
```powershell
$aiSettings = Get-ZNAiExclusionNetworkBoth
Update-ZNAiExclusionNetworkBoth -Icmp:$aiSettings.Icmp -ProcessesList $aiSettings.ProcessesList  -TcpPorts ($aiSettings.TcpPorts += "443") -UdpPorts $aiSettings.UdpPorts
```

```output
Icmp ProcessesList TcpPorts UdpPorts
---- ------------- -------- --------
True {}            443      
```

Use exisitng settings to update or add ports or processes.
