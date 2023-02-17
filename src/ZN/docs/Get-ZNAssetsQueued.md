---
external help file:
Module Name: ZN.Api
online version: https://github.com/zeronetworkszn.api/get-znassetsqueued
schema: 2.0.0
---

# Get-ZNAssetsQueued

## SYNOPSIS
Returns a list of assets in Learning.

## SYNTAX

```
Get-ZNAssetsQueued [-Limit <Int32>] [-Offset <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of assets in Learning.

## EXAMPLES

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

Use offset to get the next page of Assets in learning.

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

