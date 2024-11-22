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