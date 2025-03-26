---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znusernetworkanalysis
schema: 2.0.0
---

# Get-ZNUserNetworkAnalysis

## SYNOPSIS
Returns an object with asset analysis data.

## SYNTAX

```
Get-ZNUserNetworkAnalysis -UserId <String> [-AccountName <String>] [-ConnectionState <Int32>] [-From <Int64>]
 [-Sort <String>] [-To <Int64>] [-TrafficType <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Returns an object with asset analysis data.

## EXAMPLES

### Example 1: Get network analysis
```powershell
Get-ZNUserNetworkAnalysis -UserId u:a:2wl9Once 
```

```output
CountByDstAsset   : 131
CountByPort       : 7
CountBySrcAsset   : 3
CountBySrcProcess : 6
ItemByDstAsset    : {DC01, FS02, 204.79.197.239, 13.107.21.239…}
ItemByPort        : {, , , …}
ItemBySrcAsset    : {FS02, FS01, DC01}
ItemBySrcProcess  : {c:\windows\system32\backgroundtaskhost.exe, c:\program files (x86)\microsoft\edge\application\msedge.exe, c:\windows\system32\mmc.exe, 
                    c:\windows\systemapps\microsoft.windows.startmenuexperiencehost_cw5n1h2txyewy\startmenuexperiencehost.exe…}
```

This cmdlet gets an network analysis.

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
Default value: 3
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IUserNetworkAnalysis

## NOTES

## RELATED LINKS

