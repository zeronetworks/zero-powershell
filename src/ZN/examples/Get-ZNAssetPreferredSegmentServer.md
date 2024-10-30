### Example 1: Get preferred segment server
```powershell
Get-ZNAssetPreferredSegmentServer -AssetId a:a:ZgBWOMyc
```

```output
Error1    Message
------    -------
not found 
```

This cmdlet gets the preferred segement server for an asset.  If not found is returned, a preferred server has not been set.
