---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/get-znassetclusterinfo
schema: 2.0.0
---

# Get-ZNAssetClusterInfo

## SYNOPSIS
Returns an object of cluster name and cluster members

## SYNTAX

```
Get-ZNAssetClusterInfo -AssetId <String> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns an object of cluster name and cluster members

## EXAMPLES

### Example 1: Get Asset cluster information
```powershell
Get-ZNAssetClusterInfo -AssetId a:a:P0GVm1iZ
```

```output
ClusterInfoClusterMembersList ClusterInfoClusterName
----------------------------- ----------------------
{fs01, fs02}                  FS
```

This cmdlet gets cluster information for an asset.

## PARAMETERS

### -AccountName
this value is per customer / partner

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: (Read-ZNJWTtoken $env:ZNApiKey).aud.split(".")[0]
Accept pipeline input: False
Accept wildcard characters: False
```

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IClusterInfo

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS

