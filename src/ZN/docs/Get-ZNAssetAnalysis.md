---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znassetanalysis
schema: 2.0.0
---

# Get-ZNAssetAnalysis

## SYNOPSIS
Returns an object with asset analysis data.

## SYNTAX

```
Get-ZNAssetAnalysis -AssetId <String> -Direction <Int32> [-Connectionstate <Int32>] [-From <Int32>]
 [-Sort <String>] [-To <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Returns an object with asset analysis data.

## EXAMPLES

### Example 1: Get asset analysis
```powershell
Get-ZNAssetAnalysis -AssetId a:a:ZgBWOMyc
CountByAsset        : 0
CountByPort         : 0
CountByProcess      : 0
CountByUser         : 0
ItemByAsset         : {}
ItemByPort          : {}
ItemByProcess       : {}
ItemByUser          : {}
ItemConnectionState :
```

This cmdlet gets an asset analysis.

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

### -Connectionstate
connnection state for the query

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

### -Direction
direction for the query, 1=Inbound, 2=Outbound, 3=Both

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -From
startTime in epoch(ms)

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

### -Sort
sort for the query

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

### -To
endTime in epoch(ms)

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetAnalysisItems

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

## RELATED LINKS

