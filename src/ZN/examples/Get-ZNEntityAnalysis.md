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


