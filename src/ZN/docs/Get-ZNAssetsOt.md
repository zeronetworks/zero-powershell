---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znassetsot
schema: 2.0.0
---

# Get-ZNAssetsOt

## SYNOPSIS
Returns a list of OT/IoT assets.

## SYNTAX

```
Get-ZNAssetsOt [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of OT/IoT assets.

## EXAMPLES

### Example 1: List OT/IoT Assets
```powershell
(Get-ZNAssetsOt).Items
```

```output
AssetStatus AssetType Domain Fqdn   IPV4Addresses   IPV6Addresses Id           Name   OperatingSystem ProtectionState Source
----------- --------- ------ ----   -------------   ------------- --           ----   --------------- --------------- ------
5           4                webcam {192.168.10.20} {}            a:t:oxafRZct webcam                 1               7
```

List OT/IoT assets in the enviroment.

### Example 2: List next page of OT/IoT Assets
```powershell
(Get-ZNAssetsOt -Offset 10).Items
```

Use offset to get the next page of OT/IoT Assets.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetOt

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

## RELATED LINKS

