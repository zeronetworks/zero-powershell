### Example 1: Get audits for a specific asset
```powershell
$asset = Search-ZNAsset -Fqdn "wc01.posh.local"
Get-ZNAssetAudit -AssetId $asset).items

AuditType DestinationEntitiesList EnforcementSource PerformedByName
--------- ----------------------- ----------------- ---------------
74        {WC01}                  6                 ModuleTesting
8         {WC01}                  6                 test
```

This cmdlet gets audits for a specific asset.
