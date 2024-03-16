### Example 1: List Member of groups for an OT asset
```powershell
$otasset = Get-ZNAssetsOt | where {$_.Fqdn -eq "ot1777"}
Get-ZNAssetOtMemberOf -AssetId $otasset.Id
```

```output
Id           Name                     Description                                              DirectMembersCount
--           ----                     -----------                                              ------------------
g:o:04445453 Cameras                  Includes all camera devices in the environment           27
g:s:16445453 OT/IoT devices           Includes all OT/IoT devices in the environment           29
g:s:17445453 Segmented OT/IoT devices Includes all segmented OT/IoT devices in the environment 2
```

This cmdlet returns groups the asset is a member of for an OT asset.
