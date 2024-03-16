### Example 1: Get listening ports for an asset.
```powershell
$asset = Search-ZNAsset -Fqdn dc01.posh.local
Get-ZNAssetListeningPort -AssetId $asset
```

```output
ProcessId ProcessName                                               Username
--------- -----------                                               --------
4         System                                                    NT AUTHORITY\SYSTEM
580       C:\Windows\System32\wininit.exe                           NT AUTHORITY\SYSTEM
716       C:\Windows\System32\services.exe                          NT AUTHORITY\SYSTEM
736       C:\Windows\System32\lsass.exe                             NT AUTHORITY\SYSTEM
964       C:\Windows\System32\svchost.exe (RpcEptMapper, RpcSs)     NT AUTHORITY\NETWORK SERVICE
1072      C:\Windows\System32\svchost.exe (TermService)             NT AUTHORITY\NETWORK SERVICE
1168      C:\Windows\System32\svchost.exe (W32Time)                 NT AUTHORITY\LOCAL SERVICE
1320      C:\Windows\System32\svchost.exe (Dnscache)                NT AUTHORITY\NETWORK SERVICE
1360      C:\Windows\System32\svchost.exe (EventLog)                NT AUTHORITY\LOCAL SERVICE
1916      C:\Windows\System32\svchost.exe (Schedule)                NT AUTHORITY\SYSTEM
2376      C:\Windows\System32\spoolsv.exe                           NT AUTHORITY\SYSTEM
2388      C:\Windows\System32\svchost.exe (SessionEnv)              NT AUTHORITY\SYSTEM
2464      C:\Windows\System32\dfsrs.exe                             NT AUTHORITY\SYSTEM
2680      C:\Windows\System32\svchost.exe (FDResPub)                NT AUTHORITY\LOCAL SERVICE
2768      C:\Windows\ADWS\Microsoft.ActiveDirectory.WebServices.exe NT AUTHORITY\SYSTEM
3108      C:\Windows\System32\dns.exe                               NT AUTHORITY\SYSTEM
3156      C:\Windows\System32\svchost.exe (IKEEXT)                  NT AUTHORITY\SYSTEM
6436      C:\Windows\System32\wsmprovhost.exe                       POSH\ZNRemoteManagement
```

This cmdlet lists the listening ports for an asset.

