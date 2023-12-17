---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znassetinboundallowrule
schema: 2.0.0
---

# Get-ZNAssetInboundAllowRule

## SYNOPSIS
Returns the properties of an Inbound Allow rule.

## SYNTAX

### List (Default)
```
Get-ZNAssetInboundAllowRule -AssetId <String> [-AddAncestors] [-AddBuiltins] [-Direction <String>]
 [-EntityParams <String>] [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>] [-WithCount]
 [<CommonParameters>]
```

### Get
```
Get-ZNAssetInboundAllowRule -AssetId <String> -RuleId <String> [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of an Inbound Allow rule.

## EXAMPLES

### Example 1: List rules for a specific asset.
```powershell
$asset = Search-ZNAsset -Fqdn dc01.posh.local
Get-ZNAssetInboundAllowRule -AssetId $asset  

CreatedAt     RemoteEntityInfos LocalEntityInfoName Ruleclass ActivitiesCount Id                                   CreatedByEnforcementSource State Description
---------     ----------------- ------------------- --------- --------------- --                                   -------------------------- ----- -----------
1677252137875 {Any asset}       Domain controllers            17941           6764bd86-f3c6-4949-a827-64e1499b1b86 5                          1     Auto-gener…
```

This cmdlet gets rules for a specific asset.

### Example 2: Get a specific rule for a specific asset
```powershell
$asset = Search-ZNAsset -Fqdn dc01.posh.local
Get-ZNAssetInboundAllowRule -AssetId $asset -RuleId 6764bd86-f3c6-4949-a827-64e1499b1b86

ApprovedById               : 
ApprovedByName             : 
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
ItemAction                 : 1
ItemActivitiesCount        : 17941
ItemApprovedAt             : 
ItemCreatedAt              : 1677252137875
ItemDescription            : Auto-generated rule for tag groups
ItemDirection              : 1
ItemExcludedEntityInfos    : {}
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : 6764bd86-f3c6-4949-a827-64e1499b1b86
ItemLocalEntityId          : g:t:01445453
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem, ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {b:110001}
ItemRemoteEntityInfos      : {Any asset}
ItemRuleclass              : 
ItemState                  : 1
ItemUpdatedAt              : 1684704013889
LocalEntityInfoId          : g:t:01445453
LocalEntityInfoName        : Domain controllers
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
Default value: $true
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

## RELATED LINKS

