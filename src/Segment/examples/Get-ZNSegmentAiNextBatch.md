### Example 1: Get the date for the next batch of AI rules creation
```powershell
$aiDate = Get-ZNSegmentAiNextBatch
(Get-Date -Date "01-01-1970") + ([System.TimeSpan]::FromMilliseconds($ai))
```

```output
Thursday, October 20, 2022 11:59:59 PM
```

The date is stored in epoch(MS). It can easily be converted to human readable date.
