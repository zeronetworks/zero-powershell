### Example 1: Get a rule for a specific asset
```powershell
$asset = Search-ZNAsset -Fqdn dc01.posh.local
Get-ZNAssetInboundBlockRule -AssetId $asset

CreatedAt     RemoteEntityInfos LocalEntityInfoName Ruleclass ActivitiesCount Id                                   CreatedByEnforcementSource State Description
---------     ----------------- ------------------- --------- --------------- --                                   -------------------------- ----- -----------
1694389877854 {1.1.1.1}         Domain controllers            0               6dbe24dc-07db-4330-b7d4-22bc3a2dd3d1 5                          1 
```

This cmdlet gets a rule for a specific asset.
