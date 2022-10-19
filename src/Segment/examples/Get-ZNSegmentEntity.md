### Example 1: Get an entity
```powershell
Get-ZNSegmentEntity -EntityId a:a:ZgBWOMyc
```

```output
AssetStatus AssetType Domain    Fqdn          IPV4Addresses  IPV6Addresses               Id           Name OperatingSystem                   ProtectionState Source
----------- --------- ------    ----          -------------  -------------               --           ---- ---------------                   --------------- ------
2           2         zero.labs dc1.zero.labs {192.168.10.0} {fe80::8863:40e6:ced3:75a8} a:a:ZgBWOMyc DC1  Windows Server 2012 R2 Datacenter 10              3
```

This cmdlet gets an entity for the environment.
