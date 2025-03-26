### Example 1: Get identity analysis
```powershell
Get-ZNAssetIdentityAnalysis -AssetId a:a:JF2xro6g
```

```output
CountAuthenticationPackage : 3
CountLogonType             : 3
CountSrcAsset              : 6
CountTargetUsername        : 4
ItemAuthenticationPackage  : {Kerberos, NTLM, Negotiate}
ItemLogonType              : {, , }
ItemSrcAsset               : {FS02, FS01, SS01, WC01…}
ItemTargetUsername         : {POSH.LOCAL\zero, POSH.LOCAL\nicholas, NT AUTHORITY\ANONYMOUS LOGON, POSH\zero}
```

This cmdletn gets an identity analysis.
