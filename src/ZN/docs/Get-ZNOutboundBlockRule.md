---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znoutboundblockrule
schema: 2.0.0
---

# Get-ZNOutboundBlockRule

## SYNOPSIS
Returns the properties of an outbound block rule.

## SYNTAX

### List (Default)
```
Get-ZNOutboundBlockRule [-AddAncestors] [-AddBuiltins] [-EntityParams <String>] [-Filters <String>]
 [-Limit <Int32>] [-Offset <Int32>] [-WithCount] [<CommonParameters>]
```

### Get
```
Get-ZNOutboundBlockRule -RuleId <String> [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of an outbound block rule.

## EXAMPLES

### Example 1: List outbound block rules
```powershell
Get-ZNOutboundBlockRule
```

```output
Action CreatedAt     Description                               Direction ExpiresAt Id                                   LocalEntityId LocalProcessesList ParentId ParentType RemoteEntityIdsList              State UpdatedAt
------ ---------     -----------                               --------- --------- --                                   ------------- ------------------ -------- ---------- -------------------              ----- ---------
2      1648736821514 Sentinel Integration - Block Malicous IPs 2         0         0faafa72-2540-4d55-9418-ed62472e0e2d b:110002      {*}                         0          {b:12ac10010120, b:12ac10020120} 1     1665491061074     
```

This cmdlet gets outbound block rules from the environment.

### Example 2: Get a specific outbound block rule
```powershell
Get-ZNOutboundBlockRule -RuleId "0faafa72-2540-4d55-9418-ed62472e0e2d"
```

```output
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
ItemAction                 : 2
ItemCreatedAt              : 1648736821514
ItemDescription            : Sentinel Integration - Block Malicous IPs
ItemDirection              : 2
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : 0faafa72-2540-4d55-9418-ed62472e0e2d
ItemLocalEntityId          : b:110002
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {b:12ac10010120, b:12ac10020120}
ItemRemoteEntityInfos      : {172.16.1.1, 172.16.2.1}
ItemState                  : 1
ItemUpdatedAt              : 1675945614691
LocalEntityInfoId          : b:110002
LocalEntityInfoName        : All protected assets
UpdatedById                : m:79e1eb0a32b6f5ff066ed50cf180bcab0d122bf1
UpdatedByName              : MS Sentinel Integration
```

Get a specific outbound block rule.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IRuleItem

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IRulesList

## NOTES

## RELATED LINKS

