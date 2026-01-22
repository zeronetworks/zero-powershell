### Example 1: Set deployment cluster for assets
```powershell
$asset = Search-ZNAsset -Fqdn dc01.posh.local
Update-ZNAssetsDeploymentsCluster -DeploymentsClusterId C:d:00da83cd -AssetIds @($asset.assetId)
```

```output

```

This cmdlet assigns assets to a deployments cluster.
