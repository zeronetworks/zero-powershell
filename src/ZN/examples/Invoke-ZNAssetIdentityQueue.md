### Example 1: Add asset to identity learning
```powershell
Invoke-ZNAssetIdentityQueue -AssetId a:a:P0GVm1iZ -QueueDays 30
```

```output
ZeroNetworks.PowerShell.Cmdlets.Api.Models.Any
```

This cmdlet adds an asset to identity learning.

### Example 2: Add assets to identity learning
```powershell
Invoke-ZNAssetIdentityQueue -items @(a:a:P0GVm1iZ) -QueueDays 30
```

```output
ZeroNetworks.PowerShell.Cmdlets.Api.Models.Any
```

This cmdlet adds assets to identity learning.