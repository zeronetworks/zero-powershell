---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znassetsprotected
schema: 2.0.0
---

# Get-ZNAssetsProtected

## SYNOPSIS
Returns a list of Protected assets.

## SYNTAX

```
Get-ZNAssetsProtected [-Limit <Int32>] [-Offset <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of Protected assets.

## EXAMPLES

### Example 1: List protected assets
```powershell
(Get-ZNAssetsProtected).Items
AssetStatus AssetType Domain    Fqdn              IPV4Addresses  IPV6Addresses               Id           Name    OperatingSystem                   ProtectionState Source                           
----------- --------- ------    ----              -------------  -------------               --           ----    ---------------                   --------------- ------
2           2         zero.labs fs1.zero.labs     {192.168.10.2} {fe80::190f:e8a3:b0de:3fcd} a:a:GnyWAsYs FS1     Windows Server 2008 R2 Datacenter 3               3
2           2         zero.labs trust1.zero.labs  {192.168.10.1} {}                          a:a:EP2KKITZ TRUST1  Windows Server 2019 Standard      3               3
2           1         zero.labs win10-1.zero.labs {192.168.10.3} {}                          a:a:6BokfBbU WIN10-1 Windows 10 Pro                    3               3
2           1         zero.labs win10-2.zero.labs {192.168.10.4} {}                          a:a:HYZhxRzI WIN10-2 Windows 10 Pro                    3               3
2           1         zero.labs win10-3.zero.labs {192.168.10.5} {}                          a:a:qnRgyRA9 WIN10-3 Windows 10 Pro                    3               3
2           1         zero.labs WIN7.zero.labs    {192.168.10.6} {}                          a:a:5wiknOhs WIN7    Windows 7 Ultimate                3               3
2           1         zero.labs win8-1.zero.labs  {192.168.10.7} {}                          a:a:cxIJepiA win8-1  Windows 8.1 Enterprise            3               3
```

The cmdlet will list protected Assets for the environment.

### Example 2: List next page of protected assets
```powershell
(Get-ZNAssetsProtected -Offset 10).Items

```

Use offset to get the next page of protected Assets.

## PARAMETERS

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

