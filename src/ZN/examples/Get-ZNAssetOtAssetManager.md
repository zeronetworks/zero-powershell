### Example 1: List asset managers for an OT asset
```powershell
$otasset = Get-ZNAssetsOt | where {$_.Fqdn -eq "ot1777"}
Get-ZNAssetOtAssetManager -AssetId $otasset.Id 
```

```output
ManagerId    Relation
---------    --------
g:a:cai6Wuyd 1
```

This cmdlet lists the asset managers for an OT asset.
