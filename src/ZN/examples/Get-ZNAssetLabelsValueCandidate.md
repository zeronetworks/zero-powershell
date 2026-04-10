### Example 1: Get candidates for Label keys
```powershell
$asset = Search-ZNAsset -Fqdn wc01.posh.local
Get-ZNAssetLabelsKeyCandidate -AssetId $asset.AssetId
Get-ZNAssetLabelsValueCandidate -AssetId $asset.AssetId -Key Label
```

```output
Id       Name
--       ----
NewValue NewValue
```

This cmdlet lists values candidates for a labels key.
