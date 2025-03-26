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
