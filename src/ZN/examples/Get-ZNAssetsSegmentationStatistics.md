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
