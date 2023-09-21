---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znassetotassetmanager
schema: 2.0.0
---

# Get-ZNAssetOtAssetManager

## SYNOPSIS
Get asset managers of asset

## SYNTAX

```
Get-ZNAssetOtAssetManager -AssetId <String> [-Limit <Int32>] [-Offset <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Get asset managers of asset

## EXAMPLES

### Example 1: List asset managers for an OT asset
```powershell
$otasset = Get-ZNAssetsOt | where {$_.Fqdn -eq "ot1777"}
Get-ZNAssetOtAssetManager -AssetId $otasset.Id 

ManagerId    Relation
---------    --------
g:a:cai6Wuyd 1
```

This cmdlet lists the asset managers for an OT asset.

## PARAMETERS

### -AssetId
assetId to filter on

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IManager

## NOTES

ALIASES

## RELATED LINKS

