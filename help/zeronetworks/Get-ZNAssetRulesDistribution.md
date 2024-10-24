---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/get-znassetrulesdistribution
schema: 2.0.0
---

# Get-ZNAssetRulesDistribution

## SYNOPSIS
Returns an object with rules distribution.

## SYNTAX

```
Get-ZNAssetRulesDistribution -AssetId <String> -RuleId <String> -RuleDirection <Int32> [-AccountName <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Returns an object with rules distribution.

## EXAMPLES

### Example 1: List the rules distribution for a rule for an asset
```powershell
$asset = Search-ZNAsset -Fqdn wc01.posh.local
Get-ZNAssetRulesDistribution -AssetId $asset -RuleId d69a32ec-a5ea-4915-a33f-297c6ec2ceec -RuleDirection 2
```

```output
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

## PARAMETERS

### -AccountName
this value is per customer / partner

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: (Read-ZNJWTtoken $env:ZNApiKey).aud.split(".")[0]
Accept pipeline input: False
Accept wildcard characters: False
```

### -AssetId
assetId to filter on

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RuleDirection
direction of the rule (1-Inbound, 2-Outbound)

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RuleId
The id of the rule

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IRuleDistribution

## NOTES

## RELATED LINKS

