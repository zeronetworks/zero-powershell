### Example 1: List RPC Monitored Assets
```powershell
(Get-ZNAssetsRpcMonitored).Items
```

```output
Id           Fqdn            IPV4Addresses IPV6Addresses              Source AssetStatus ProtectionState
--           ----            ------------- -------------              ------ ----------- ---------------
a:a:TeGEW52g dc01.posh.local {10.0.0.4}    {fe80::c60b:6dd:cd7a:2581} 3      2           1
```

This cmdlet lists RPC monitored assets.
