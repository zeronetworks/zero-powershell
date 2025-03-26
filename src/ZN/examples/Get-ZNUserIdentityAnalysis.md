### Example 1: Get identity analysis
```powershell
Get-ZNUserIdentityAnalysis -UserId u:a:2wl9Once
```

```output
CountAuthenticationPackage : 3
CountDstAsset              : 4
CountLogonType             : 3
CountSrcAsset              : 5
ItemAuthenticationPackage  : {Kerberos, Negotiate, NTLM}
ItemDstAsset               : {DC01, FS02, FS01, SS01}
ItemLogonType              : {, , }
ItemSrcAsset               : {FS01, FS02, SS01, 192.168.1.206…}
```

This cmdlet gets an identity analysis.
