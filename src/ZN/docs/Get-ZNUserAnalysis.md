---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znuseranalysis
schema: 2.0.0
---

# Get-ZNUserAnalysis

## SYNOPSIS
Returns an object with asset analysis data.

## SYNTAX

```
Get-ZNUserAnalysis -UserId <String> -TrafficType <Int32> [-AccountName <String>] [-ConnectionState <Int32>]
 [-From <Int64>] [-Sort <String>] [-To <Int64>] [<CommonParameters>]
```

## DESCRIPTION
Returns an object with asset analysis data.

## EXAMPLES

### Example 1: Get user network analysis
```powershell
$userid = 'u:a:hOLnvx4y'
$epoch = [int64]([DateTime]::UtcNow.AddDays(-7) - [DateTime]'1970-01-01').TotalMilliseconds
Get-ZNUserAnalysis -UserId $userid -TrafficType 3 -from $epoch -Connectionstate 3 -Sort occurred_desc
```

```output
CountByDstAsset   : 0
CountByPort       : 0
CountBySrcAsset   : 0
CountBySrcProcess : 0
ItemByDstAsset    : {}
ItemByPort        : {}
ItemBySrcAsset    : {}
ItemBySrcProcess  : {}
```

This cmdlet returns the

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

### -ConnectionState
connection state for the query

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

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UserId
userId to filter on

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IUserAnalysis

## NOTES

## RELATED LINKS

