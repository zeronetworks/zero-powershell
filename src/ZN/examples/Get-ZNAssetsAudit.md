### Example 1: List audits for an asset
```powershell
PS C:\> (Get-ZNAssetsAudit -AssetId $asset).Items
```

```output
AuditType DestinationEntitiesList EnforcementSource PerformedByName
--------- ----------------------- ----------------- ---------------
1         {DC01}                  6                 ModuleTesting
4         {DC01}                  6                 ModuleTesting
```

This cmdlet lists audits for an asset.