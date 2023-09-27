---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znassetoutboundblockrule
schema: 2.0.0
---

# Get-ZNAssetOutboundBlockRule

## SYNOPSIS
Returns the properties of an outbound block rule.

## SYNTAX

### List (Default)
```
Get-ZNAssetOutboundBlockRule -AssetId <String> [-AddAncestors] [-AddBuiltins] [-Direction <String>]
 [-EntityParams <String>] [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>] [-WithCount]
 [<CommonParameters>]
```

### Get
```
Get-ZNAssetOutboundBlockRule -AssetId <String> -RuleId <String> [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of an outbound block rule.

## EXAMPLES

### Example 1: List rules for a specific asset
```powershell
$asset = Search-ZNAsset -Fqdn wc01.posh.local
Get-ZNAssetOutboundBlockRule -AssetId $assetGet-ZNAssetOutboundBlockRule -AssetId $asset -AddBuiltins

CreatedAt     RemoteEntityInfos      LocalEntityInfoName  Ruleclass ActivitiesCount Id                                   CreatedByEnforcementSource State Description
---------     -----------------      -------------------  --------- --------------- --                                   -------------------------- ----- -----------
1694455805574 {1.2.3.4, badsite.com} All segmented assets           0               a33ae68e-0c9e-4d0c-a20c-433aa0563d36 4                          1
```

This cmdlet retruns a list of rules for a specific asset.

### Example 2: Get a specific rule for a specific asset
```powershell
$asset = Search-ZNAsset -Fqdn wc01.posh.local
Get-ZNAssetOutboundBlockRule -AssetId $asset -RuleId a33ae68e-0c9e-4d0c-a20c-433aa0563d36

ApprovedById               : 
ApprovedByName             : 
CreatedByEnforcementSource : 4
CreatedById                : u:a:w27loY5p
CreatedByName              : nicholas
CreatedByUserRole          : 1
ItemAction                 : 2
ItemActivitiesCount        : 0
ItemApprovedAt             : 
ItemCreatedAt              : 1694455805574
ItemDescription            : 
ItemDirection              : 2
ItemExcludedEntityInfos    : {}
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : a33ae68e-0c9e-4d0c-a20c-433aa0563d36
ItemLocalEntityId          : b:110002
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {b:120102030420, b:17badsite.com}
ItemRemoteEntityInfos      : {1.2.3.4, badsite.com}
ItemRuleclass              : 
ItemState                  : 1
ItemUpdatedAt              : 
LocalEntityInfoId          : b:110002
LocalEntityInfoName        : All segmented assets
UpdatedById                : 
UpdatedByName              : 
```

This cmdlet can get a specific rule for a specific asset.

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
direction for the query, incoming or outgoing

```yaml
Type: System.String
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: 2
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

