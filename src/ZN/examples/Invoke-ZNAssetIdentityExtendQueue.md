### Example 1: Extend asset in identity learning
```powershell
Invoke-ZNAssetIdentityExtendQueue -AssetId a:a:P0GVm1iZ -ExtendByDays 30
```

```output
ZeroNetworks.PowerShell.Cmdlets.Api.Models.Any
```

This cmdlet extends identity learning for an asset.

### Example 2: Exnted assets in identity learning
```powershell
Invoke-ZNAssetIdentityExtendQueue -items @(a:a:P0GVm1iZ) -ExtendByDays 30
```

```output
ZeroNetworks.PowerShell.Cmdlets.Api.Models.Any
```

This cmdlet extends identity learning for assets.