### Example 1: List OT/IoT Assets
```powershell
(Get-ZNSegmentAssetsOt).Items
```

```output
AssetStatus AssetType Domain Fqdn   IPV4Addresses   IPV6Addresses Id           Name   OperatingSystem ProtectionState Source
----------- --------- ------ ----   -------------   ------------- --           ----   --------------- --------------- ------
5           4                webcam {192.168.10.20} {}            a:t:oxafRZct webcam                 1               7
```

List OT/IoT assets in the enviroment.

### Example 2: List next page of OT/IoT Assets
```powershell
(Get-ZNSegmentAssetsOt -Offset 10).Items
```

```output

```

Use offset to get the next page of OT/IoT Assets.

