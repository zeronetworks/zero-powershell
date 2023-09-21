---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znassetinboundblockrule
schema: 2.0.0
---

# Get-ZNAssetInboundBlockRule

## SYNOPSIS
Returns the properties of the Inbound Block rule.

## SYNTAX

### List (Default)
```
Get-ZNAssetInboundBlockRule -AssetId <String> [-AddAncestors] [-AddBuiltins] [-Direction <Int32>]
 [-EntityParams <String>] [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>] [-WithCount]
 [<CommonParameters>]
```

### Get
```
Get-ZNAssetInboundBlockRule -AssetId <String> -RuleId <String> [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of the Inbound Block rule.

## EXAMPLES

### Example 1: Get a rule for a specific asset
```powershell
$asset = Search-ZNAsset -Fqdn dc01.posh.local
Get-ZNAssetInboundBlockRule -AssetId $asset

CreatedAt     RemoteEntityInfos LocalEntityInfoName Ruleclass ActivitiesCount Id                                   CreatedByEnforcementSource State Description
---------     ----------------- ------------------- --------- --------------- --                                   -------------------------- ----- -----------
1694389877854 {1.1.1.1}         Domain controllers            0               6dbe24dc-07db-4330-b7d4-22bc3a2dd3d1 5                          1 
```

This cmdlet gets a rule for a specific asset.

## PARAMETERS

### -AddAncestors
show rules where the asset is part of a group

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: $true
Accept pipeline input: False
Accept wildcard characters: False
```

### -AddBuiltins
show global rules

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: None
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

### -Direction
direction for the query, 1=Inbound, 2=Outbound, 3=Both

```yaml
Type: System.Int32
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: 1
Accept pipeline input: False
Accept wildcard characters: False
```

### -EntityParams
JSON string URI encoded object {id: string, direction: AssetDirection}

```yaml
Type: System.String
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Filters
JSON string URI encoded set of fiters

```yaml
Type: System.String
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Limit
Limit the return results

```yaml
Type: System.Int32
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: 10
Accept pipeline input: False
Accept wildcard characters: False
```

### -Offset
Used to page through results

```yaml
Type: System.Int32
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RuleId
The id of the rule

```yaml
Type: System.String
Parameter Sets: Get
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WithCount
return count of objects

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: List
Aliases:

Required: False
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IRule

## NOTES

ALIASES

## RELATED LINKS

