---
external help file:
Module Name: ZN.Api
online version: https://github.com/zn.api/get-znentityanalysis
schema: 2.0.0
---

# Get-ZNEntityAnalysis

## SYNOPSIS
Returns an object with entity analysis data.

## SYNTAX

```
Get-ZNEntityAnalysis -EntityId <String> [-Connectionstate <Int32>] [-Direction <String>] [-From <Int32>]
 [-Sort <String>] [-To <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Returns an object with entity analysis data.

## EXAMPLES

### Example 1: Get entity analysis
```powershell
$asset = Search-ZNAsset -Fqdn "dc1.zero.labs" 
Get-ZNEntityAnalysis -EntityId $asset
```

```output
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

Get entity analysis for an asset.

## PARAMETERS

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
direction for the query

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

### -EntityId
entityId to filter on

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IEntityAnalysisItems

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

## RELATED LINKS
