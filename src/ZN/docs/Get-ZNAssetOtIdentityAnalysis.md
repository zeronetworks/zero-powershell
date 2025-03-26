---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znassetotidentityanalysis
schema: 2.0.0
---

# Get-ZNAssetOtIdentityAnalysis

## SYNOPSIS
Returns an object with OT/IoT asset analysis data.

## SYNTAX

```
Get-ZNAssetOtIdentityAnalysis -AssetId <String> [-AccountName <String>] [-Direction <Int32>]
 [-EventType <Int32>] [-From <Int64>] [-Sort <String>] [-To <Int64>] [<CommonParameters>]
```

## DESCRIPTION
Returns an object with OT/IoT asset analysis data.

## EXAMPLES

### Example 1: Get identity analysis
```powershell
Get-ZNAssetOtIdentityAnalysis -AssetId a:t:BPFR4ZlN
```

```output
CountAuthenticationPackage : 0
CountLogonType             : 0
CountSrcAsset              : 0
CountTargetUsername        : 0
ItemAuthenticationPackage  : {}
ItemLogonType              : {}
ItemSrcAsset               : {}
ItemTargetUsername         : {}
```

This cmdletn gets an identity analysis.

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

### -EventType
0-Success, 2-Failure

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetIdentityAnalysis

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS

