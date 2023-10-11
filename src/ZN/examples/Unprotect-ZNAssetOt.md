### Example 1: Remove OT assets from protection.
```powershell
Unprotect-ZNAssetOt -Items @(Search-ZNAsset -Fqdn ot1777)

```

This cmdlet will remove OT assets from segementation.  Items accepts a list of assetIds.

### Example 1: Remove an Asset from protection.
```powershell
Unprotect-ZNAsset -AssetId (Search-ZNAsset -Fqdn ot1777)

```

This cmdlet will remove an asset from segementation.