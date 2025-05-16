---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znassetotnetworkanalysis
schema: 2.0.0
---

# Get-ZNAssetOtNetworkAnalysis

## SYNOPSIS
Returns an object with OT/IoT asset analysis data.

## SYNTAX

```
Get-ZNAssetOtNetworkAnalysis -AssetId <String> [-AccountName <String>] [-ConnectionState <Int32>]
 [-Direction <Int32>] [-DirectlyRetrievedFromAsset] [-From <Int64>] [-Sort <String>] [-To <Int64>]
 [-TrafficType <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Returns an object with OT/IoT asset analysis data.

## EXAMPLES

### Example 1: Get network analysis
```powershell
Get-ZNAssetOtNetworkAnalysis -AssetId a:t:BPFR4ZlN -DirectlyRetrievedFromAsset:$false
```

```output
CountByLocalAsset  : 0
CountByPort        : 0
CountByRemoteAsset : 0
CountBySrcProcess  : 0
CountByUser        : 0
ItemByLocalAsset   : {}
ItemByPort         : {}
ItemByRemoteAsset  : {}
ItemBySrcProcess   : {}
ItemByUser         : {}
```

This cmdlet gets a network analysis.

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

### -ConnectionState
connection state for the query

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 3
Accept pipeline input: False
Accept wildcard characters: False
```

### -Direction
direction for the query, 1=Inbound, 2=Outbound, 3=Both

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 1
Accept pipeline input: False
Accept wildcard characters: False
```

### -DirectlyRetrievedFromAsset
Only get activities retrieved from the asset

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: $false
Accept pipeline input: False
Accept wildcard characters: False
```

### -From
startTime in epoch(ms)

```yaml
Type: System.Int64
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
Type: System.Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TrafficType
1-Internal, 2-External or 3-Both

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 3
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetNetworkAnalysis

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS

