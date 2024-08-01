### Example 1: List identity learning assets
```powershell
(Get-ZNAssetsIdentityQueued).Items
```

```output
Id           Fqdn            IPV4Addresses IPV6Addresses               Source AssetStatus ProtectionState
--           ----            ------------- -------------               ------ ----------- ---------------
a:a:8ErCHXe8 DC01.posh.local {10.1.0.5}    {fe80::dd2c:f725:b57e:a4b1} 3      2           1
```

This cmdlet lists identity learning assets.
