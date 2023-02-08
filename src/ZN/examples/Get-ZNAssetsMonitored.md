### Example 1: List monitored assets
```powershell
(Get-ZNAssetsMonitored).Items
```

```output
AssetStatus AssetType Domain    Fqdn              IPV4Addresses  IPV6Addresses               Id           Name    OperatingSystem                   ProtectionState Source
----------- --------- ------    ----              -------------  -------------               --           ----    ---------------                   --------------- ------
2           2         zero.labs dc1.zero.labs     {192.168.10.0} {fe80::8863:40e6:ced3:75a8} a:a:ZgBWOMyc DC1     Windows Server 2012 R2 Datacenter 5               3
2           2         zero.labs fs1.zero.labs     {192.168.10.2} {fe80::190f:e8a3:b0de:3fcd} a:a:GnyWAsYs FS1     Windows Server 2008 R2 Datacenter 3               3
2           2         zero.labs trust1.zero.labs  {192.168.10.1} {}                          a:a:EP2KKITZ TRUST1  Windows Server 2019 Standard      3               3
2           1         zero.labs win10-1.zero.labs {192.168.10.3} {}                          a:a:6BokfBbU WIN10-1 Windows 10 Pro                    3               3
2           1         zero.labs win10-2.zero.labs {192.168.10.4} {}                          a:a:HYZhxRzI WIN10-2 Windows 10 Pro                    3               3
2           1         zero.labs win10-3.zero.labs {192.168.10.5} {}                          a:a:qnRgyRA9 WIN10-3 Windows 10 Pro                    3               3
2           1         zero.labs WIN7.zero.labs    {192.168.10.6} {}                          a:a:5wiknOhs WIN7    Windows 7 Ultimate                3               3
2           1         zero.labs win8-1.zero.labs  {192.168.10.7} {}                          a:a:cxIJepiA win8-1  Windows 8.1 Enterprise            3               3
```

The cmdlet will list monitored Assets for the environment.

### Example 2: List next page of monitored assets
```powershell
(Get-ZNAssetsMonitored -Offset 10).Items
```

```output
AssetStatus AssetType Domain    Fqdn              IPV4Addresses  IPV6Addresses               Id           Name    OperatingSystem                   ProtectionState Source
----------- --------- ------    ----              -------------  -------------               --           ----    ---------------                   --------------- ------
2           2         zero.labs dc1.zero.labs     {192.168.10.0} {fe80::8863:40e6:ced3:75a8} a:a:ZgBWOMyc DC1     Windows Server 2012 R2 Datacenter 5               3
2           2         zero.labs fs1.zero.labs     {192.168.10.2} {fe80::190f:e8a3:b0de:3fcd} a:a:GnyWAsYs FS1     Windows Server 2008 R2 Datacenter 3               3
2           2         zero.labs trust1.zero.labs  {192.168.10.1} {}                          a:a:EP2KKITZ TRUST1  Windows Server 2019 Standard      3               3
2           1         zero.labs win10-1.zero.labs {192.168.10.3} {}                          a:a:6BokfBbU WIN10-1 Windows 10 Pro                    3               3
2           1         zero.labs win10-2.zero.labs {192.168.10.4} {}                          a:a:HYZhxRzI WIN10-2 Windows 10 Pro                    3               3
2           1         zero.labs win10-3.zero.labs {192.168.10.5} {}                          a:a:qnRgyRA9 WIN10-3 Windows 10 Pro                    3               3
2           1         zero.labs WIN7.zero.labs    {192.168.10.6} {}                          a:a:5wiknOhs WIN7    Windows 7 Ultimate                3               3
2           1         zero.labs win8-1.zero.labs  {192.168.10.7} {}                          a:a:cxIJepiA win8-1  Windows 8.1 Enterprise            3               3
```

Use offset to get the next page of monitored Assets.

