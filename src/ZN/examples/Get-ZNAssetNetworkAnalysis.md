### Example 1: Get network analysis
```powershell
Get-ZNAssetNetworkAnalysis -AssetId a:a:JF2xro6g -DirectlyRetrievedFromAsset
```

```output
CountByLocalAsset  : 0
CountByPort        : 15
CountByRemoteAsset : 8
CountBySrcProcess  : 13
CountByUser        : 5
ItemByLocalAsset   : {}
ItemByPort         : {, , , …}
ItemByRemoteAsset  : {FS01, FS02, WC01, 192.168.1.206…}
ItemBySrcProcess   : {c:\windows\system32\lsass.exe, c:\windows\system32\backgroundtaskhost.exe, system, c:\windows\cluster\rhs.exe…}
ItemByUser         : {Local System, zero, NT Authority - Local, Nicholas…}
```

This cmdlet gets a network analysis.
