### Example 1: Get candidates for Label keys
```powershell
$asset = Search-ZNAsset -Fqdn poshotv1.posh.local
Get-ZNAssetOtLabelsKeyCandidate -AssetId $asset.AssetId
```

```output
Id    Name
--    ----
Label Label
test  test
```

This cmdlet lists keys candidates for labels.
