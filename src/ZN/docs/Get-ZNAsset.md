---
external help file:
Module Name: ZN.Api
online version: https://github.com/zn.api/get-znasset
schema: 2.0.0
---

# Get-ZNAsset

## SYNOPSIS
Returns a list of assets.

## SYNTAX

```
Get-ZNAsset [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of assets.

## EXAMPLES

### Example 1: List assets
```powershell
(Get-ZNAsset).Items
```

```output
AssetStatus AssetType Domain    Fqdn              IPV4Addresses     IPV6Addresses               Id           Name                          OperatingSystem                   ProtectionState Source
----------- --------- ------    ----              -------------     -------------               --           ----                          ---------------                   --------------- ------
6           0                                     {192.168.219.218} {}                          a:u:vRZwSRpH Amir Frankel's-Windows10-8fd7                                   1               2
2           2         zero.labs dc1.zero.labs     {192.168.10.0}    {fe80::8863:40e6:ced3:75a8} a:a:ZgBWOMyc DC1                           Windows Server 2012 R2 Datacenter 5               3
2           2         zero.labs fs1.zero.labs     {192.168.10.2}    {fe80::190f:e8a3:b0de:3fcd} a:a:GnyWAsYs FS1                           Windows Server 2008 R2 Datacenter 3               3
2           2         zero.labs trust1.zero.labs  {192.168.10.1}    {}                          a:a:EP2KKITZ TRUST1                        Windows Server 2019 Standard      3               3
2           1         zero.labs win10-1.zero.labs {192.168.10.3}    {}                          a:a:6BokfBbU WIN10-1                       Windows 10 Pro                    3               3
2           1         zero.labs win10-2.zero.labs {192.168.10.4}    {}                          a:a:HYZhxRzI WIN10-2                       Windows 10 Pro                    3               3
2           1         zero.labs win10-3.zero.labs {192.168.10.5}    {}                          a:a:qnRgyRA9 WIN10-3                       Windows 10 Pro                    3               3
2           1         zero.labs WIN7.zero.labs    {192.168.10.6}    {}                          a:a:5wiknOhs WIN7                          Windows 7 Ultimate                3               3
2           1         zero.labs win8-1.zero.labs  {192.168.10.7}    {}                          a:a:cxIJepiA win8-1                        Windows 8.1 Enterprise            3               3
```

The cmdlet will list Assets for the environment.

### Example 2: List next page of assets
```powershell
(Get-ZNAsset -Offset 20).Items
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

Use offset to get the next page of assets.

## PARAMETERS

### -Filters
JSON string URI encoded set of fiters

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Limit
Limit the return results

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 10
Accept pipeline input: False
Accept wildcard characters: False
```

### -Offset
Used to page through results

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

## RELATED LINKS

