---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znassetssegmentationstatistics
schema: 2.0.0
---

# Get-ZNAssetsSegmentationStatistics

## SYNOPSIS
Returns an object with asset segmentation statistics.

## SYNTAX

```
Get-ZNAssetsSegmentationStatistics -TimeFrame <Int32> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns an object with asset segmentation statistics.

## EXAMPLES

### Example 1: Get segmentation statistics
```powershell
Get-ZNAssetsSegmentationStatistics -TimeFrame 3
```

```output
Date          MonitorAssets SegmentedAssets SegmentedOutOfMonitor
----          ------------- --------------- ---------------------
1744761600000 10            5               50
1744848000000 10            5               50
1744934400000 10            5               50
1745020800000 10            5               50
1745107200000 10            5               50
1745193600000 10            5               50
1745280000000 10            5               50
1745366400000 10            5               50
1745452800000 10            5               50
1745539200000 10            5               50
1745625600000 10            5               50
...
```

This cmdlet gets segmentation statistics.

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

### -TimeFrame
timeframe parameter Max = -1 One Month = 1 Three Monthes = 3 Six Monthes = 6 One Year = 12

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetsSegmentationStatistics

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS

