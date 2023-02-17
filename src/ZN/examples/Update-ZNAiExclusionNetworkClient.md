### Example 1: Update AI Exclusion settings for clients
```powershell
Update-ZNAiExclusionNetworkClient -Icmp -ProcessesList @()  -TcpPorts "" -UdpPorts ""
```

```output
Icmp ProcessesList TcpPorts UdpPorts
---- ------------- -------- --------
True {}     
```

This cmdlet updates the AI exclusions for clients under Data Collection.

### Example 2: Add a setting to the current settings.
```powershell
$aiSettings = Get-ZNAiExclusionNetworkClient
Update-ZNAiExclusionNetworkClient -Icmp:$aiSettings.Icmp -ProcessesList $aiSettings.ProcessesList  -TcpPorts ($aiSettings.TcpPorts += "443") -UdpPorts $aiSettings.UdpPorts
```

```output
Icmp ProcessesList TcpPorts UdpPorts
---- ------------- -------- --------
True {}            443      
```

Use exisitng settings to update or add ports or processes.
