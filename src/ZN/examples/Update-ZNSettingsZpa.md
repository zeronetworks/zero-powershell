### Example 1: Update ZPA settings
```powershell
$zpa = Get-ZNSettingsZpa
Update-ZNSettingsZpa -ClientOutboundSubnet $zpa.ClientOutboundSubnet -GatewayIpsList $zpa.GatewayIpsList -IsEnabled:$zpa.IsEnabled -PortsToMfaTcp $zpa.PortsToMfaTcp -PortsToMfaUdp "21"
```

```output

```

This cmdlet updates the ZPA settings.
