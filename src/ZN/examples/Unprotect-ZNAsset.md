### Example 1: Remove assets from protection.
```powershell
Unprotect-ZNAsset -Items @(Search-ZNAsset -Fqdn dc1.zero.labs)

```

This cmdlet will remove assets from segementation.  Items accepts a list of assetIds.

### Example 1: Remove an Asset from protection.
```powershell
Unprotect-ZNAsset -AssetId (Search-ZNAsset -Fqdn dc1.zero.labs)

```

This cmdlet will remove an asset from segementation.