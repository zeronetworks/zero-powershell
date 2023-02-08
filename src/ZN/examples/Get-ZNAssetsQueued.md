### Example 1: List assets in learning
```powershell
(Get-ZNAssetsQueued).Items
```

```output
AssetStatus AssetType Domain    Fqdn          IPV4Addresses  IPV6Addresses               Id           Name OperatingSystem                   ProtectionState Source
----------- --------- ------    ----          -------------  -------------               --           ---- ---------------                   --------------- ------
2           2         zero.labs dc1.zero.labs {192.168.10.0} {fe80::8863:40e6:ced3:75a8} a:a:ZgBWOMyc DC1  Windows Server 2012 R2 Datacenter 5               3
```

The cmdlet will list Assets in learning for the environment.

### Example 2: List next page of assets in learning
```powershell
(Get-ZNAssetsQueued -Offset 10).Items
```

```output

```

Use offset to get the next page of Assets in learning.

