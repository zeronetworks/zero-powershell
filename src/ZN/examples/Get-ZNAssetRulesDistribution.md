### Example 1: List the rules distribution for a rule for an asset
```powershell
$asset = Search-ZNAsset -Fqdn wc01.posh.local
Get-ZNAssetRulesDistribution -AssetId $asset -RuleId d69a32ec-a5ea-4915-a33f-297c6ec2ceec -RuleDirection 2

ActivitiesCount Timestamp
--------------- ---------
0               1691798400000
0               1691884800000
0               1691971200000
0               1692057600000
0               1692144000000
0               1692230400000
0               1692316800000
0               1692403200000
0               1692489600000
0               1692576000000
0               1692662400000
0               1692748800000
0               1692835200000
0               1692921600000
0               1693008000000
0               1693094400000
0               1693180800000
0               1693267200000
0               1693353600000
0               1693440000000
0               1693526400000
0               1693612800000
0               1693699200000
0               1693785600000
0               1693872000000
0               1693958400000
0               1694044800000
0               1694131200000
0               1694217600000
0               1694304000000
16              1694390400000
```

This cmdlet returns the rules distribution for a rule for an asset.
