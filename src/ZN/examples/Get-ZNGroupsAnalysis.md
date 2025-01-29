### Example 1: Get a group analysis
```powershell
Get-ZNGroupsAnalysis -GroupType tag -GroupId g:t:01da83cd -Direction 1 -DirectlyRetrievedFromAsset:$true -TrafficType 3 -ConnectionState 3
```

```output
CountByLocalAsset  : 1
CountByPort        : 13
CountByRemoteAsset : 6
CountBySrcProcess  : 8
CountByUser        : 4
ItemByLocalAsset   : {DC01}
ItemByPort         : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.ByPort, ZeroNetworks.PowerShell.Cmdlets.Api.Models.ByPort, 
                     ZeroNetworks.PowerShell.Cmdlets.Api.Models.ByPort, ZeroNetworks.PowerShell.Cmdlets.Api.Models.ByPort…}
ItemByRemoteAsset  : {FS01, FS02, WC01, 192.168.1.206…}
ItemBySrcProcess   : {c:\windows\system32\lsass.exe, c:\windows\system32\backgroundtaskhost.exe, system, 
                     c:\windows\system32\svchost.exe (gpsvc)…}
ItemByUser         : {Local System, zero, NT Authority - Local, Nicholas}
```

This cmdlet gets a group analysis.
