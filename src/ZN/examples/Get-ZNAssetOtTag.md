### Example 1: List OT asset tags
```powershell
$otasset = Get-ZNAssetsOt | where {$_.Fqdn -eq "ot1777"}
Get-ZNAssetOtTag -AssetId $otasset.Id

Id           Name                  Description                                       DirectMembersCount
--           ----                  -----------                                       ------------------
g:t:27445453 Network Scanners      Includes network Scanners in the environment      1
g:t:30445453 Offensive Cyber tools Includes offensive cyber tools in the environment 1
```

This cmdlet lists tags for an OT asset.
