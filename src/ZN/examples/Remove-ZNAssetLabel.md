### Example 1: Remove asset label
```powershell
Remove-ZNAssetLabel -AssetId a:n:c9PBr848 -Labels @(@{"key"="label";"value"="NewValue"})
```

```output
AffectedEntities
----------------
               1
```

This cmdlet removes a label from an asset.
