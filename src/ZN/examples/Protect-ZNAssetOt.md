### Example 1: Move a single asset to segmented
```powershell
$otasset = Get-ZNAssetsOt | where {$_.Fqdn -eq "ot1777"}
Protect-ZNAssetOt -AssetId $otasset.Id

```

This cmdlet will move an asset from learning to segemented in the envrionment.

### Example 2: Move all assets in learning to segmented
```powershell
Protect-ZNAssetOt -Items (((Get-ZNAssetsQueued).Items | where {$_.Id -like "a:t:*"}).Id)

```

This sample will move all assets currently in learning to segmented.

