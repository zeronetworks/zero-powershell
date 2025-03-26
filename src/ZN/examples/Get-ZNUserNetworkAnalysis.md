### Example 1: Get network analysis
```powershell
Get-ZNUserNetworkAnalysis -UserId u:a:2wl9Once 
```

```output
CountByDstAsset   : 131
CountByPort       : 7
CountBySrcAsset   : 3
CountBySrcProcess : 6
ItemByDstAsset    : {DC01, FS02, 204.79.197.239, 13.107.21.239…}
ItemByPort        : {, , , …}
ItemBySrcAsset    : {FS02, FS01, DC01}
ItemBySrcProcess  : {c:\windows\system32\backgroundtaskhost.exe, c:\program files (x86)\microsoft\edge\application\msedge.exe, c:\windows\system32\mmc.exe, 
                    c:\windows\systemapps\microsoft.windows.startmenuexperiencehost_cw5n1h2txyewy\startmenuexperiencehost.exe…}
```

This cmdlet gets an network analysis.
