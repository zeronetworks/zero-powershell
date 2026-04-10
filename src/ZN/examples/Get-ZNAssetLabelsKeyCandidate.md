### Example 1: Get candidates for Label keys
```powershell
$asset = Search-ZNAsset -Fqdn wc01.posh.local
Get-ZNAssetLabelsKeyCandidate -AssetId $asset.AssetId
```

```output
Id    Name
--    ----
Label Label
test  test
```

This cmdlet lists keys candidates for labels.
