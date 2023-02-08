### Example 1: Extend an asset learning time
```powershell
Invoke-ZNExtendAssetQueue -Items @((Search-ZNAsset -Fqdn fs1.zero.labs)) -ExtendByDays 14
```

```output

```

This cmdlet will extend the learning time of an asset in the environment.