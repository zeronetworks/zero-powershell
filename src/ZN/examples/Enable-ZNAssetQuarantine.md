### Example 1: Quarnatine an asset
```powershell
Enable-ZNAssetQuarantine -AssetId "a:d:FMVqm8jZ" -Quarantine
```

```output

```

This cmdlet enables quarantine for an asset.

### Example 2: Disable quarantine for an asset
```powershell
Enable-ZNAssetQuarantine -AssetId "a:d:FMVqm8jZ" -Quarantine:$false
```

```output

```

This cmdlet disables quarantine for an asset.

### Example 3: Quarnatine assets
```powershell
Enable-ZNAssetQuarantine -AssetIds @("a:d:FMVqm8jZ","a:l:4NMHdoaO") -Quarantine
```

```output

```

This cmdlet enables quarantine for assets.

### Example 2: Disable quarantine for assets
```powershell
Enable-ZNAssetQuarantine -AssetIds @("a:d:FMVqm8jZ","a:l:4NMHdoaO") -Quarantine:$false
```

```output

```

This cmdlet disables quarantine for assets.
