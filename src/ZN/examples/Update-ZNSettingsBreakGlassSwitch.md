### Example 1: Enable switch break glass for the environment
```powershell
Update-ZNSettingsBreakGlassSwitch -AllowNetworkTraffic -StopMonitoring
```

```output

```

This cmdlet enables both the monitoring and segmentation break glass for all switches in the environment.

### Example 2: Enable switch break glass for the environment
```powershell
Update-ZNSettingsBreakGlassSwitch -AllowNetworkTraffic:$false -StopMonitoring:$false
```

```output

```

This cmdlet disables both the monitoring and segmentation break glass for all switches in the environment.

