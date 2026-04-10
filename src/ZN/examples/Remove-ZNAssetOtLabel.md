### Example 1: Remove asset label
```powershell
Remove-ZNAssetOTLabel -AssetId a:t:BPFR4ZlN -Labels @(@{"key"="label";"value"="NewValue"})
```

```output
AffectedEntities
----------------
               1
```

This cmdlet removes a label from an asset.
