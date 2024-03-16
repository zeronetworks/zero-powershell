### Example 1: Get an OT asset
```powershell
$otasset = Get-ZNAssetsOt | where {$_.Fqdn -eq "ot1777"}
Get-ZNAssetOt -AssetId $otasset.Id
```

```output
EntityAssetStatus     : 5
EntityAssetType       : 4
EntityDomain          : 
EntityFqdn            : ot1777
EntityId              : a:t:OeG7qsVV
EntityIpv4Addresses   : {230.176.229.143}
EntityIpv6Addresses   : {}
EntityName            : ot1777
EntityOperatingSystem : 
EntityProtectionState : 3
EntitySource          : 7
```

This cmdlet gets an OT asset.
