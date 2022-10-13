---
external help file:
Module Name: ZN.Segment
online version: https://github.com/zn.segment/get-znsegmentoutboundblockrule
schema: 2.0.0
---

# Get-ZNSegmentOutboundBlockRule

## SYNOPSIS
Get an outbound block rule

## SYNTAX

### List (Default)
```
Get-ZNSegmentOutboundBlockRule [-EntityParams <String>] [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>]
 [<CommonParameters>]
```

### Get
```
Get-ZNSegmentOutboundBlockRule -RuleId <String> [<CommonParameters>]
```

## DESCRIPTION
Get an outbound block rule

## EXAMPLES

### Example 1: List outbound block rules
```powershell
Get-ZNSegmentOutboundBlockRule
```

```output
ction CreatedAt     Description                               Direction ExpiresAt Id                                   LocalEntityId LocalProcessesList ParentId ParentType RemoteEntityIdsList              State UpdatedAt
------ ---------     -----------                               --------- --------- --                                   ------------- ------------------ -------- ---------- -------------------              ----- ---------
2      1648736821514 Sentinel Integration - Block Malicous IPs 2         0         0faafa72-2540-4d55-9418-ed62472e0e2d b:110002      {*}                         0          {b:12ac10010120, b:12ac10020120} 1     1665491061074     
```

This cmdlet gets outbound block rules from the environment.

### Example 2: Get a specific outbound block rule
```powershell
Get-ZNSegmentOutboundBlockRule -RuleId "0faafa72-2540-4d55-9418-ed62472e0e2d"
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
ItemExpiresAt              : 0
ItemId                     : 0faafa72-2540-4d55-9418-ed62472e0e2d
ItemLocalEntityId          : b:110002
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Segment.Models.PortsListItem}
ItemRemoteEntityIdsList    : {b:12ac10010120, b:12ac10020120}
ItemRemoteEntityInfos      : {172.16.1.1, 172.16.2.1}
ItemState                  : 1
ItemUpdatedAt              : 1665491061074
LocalEntityInfoId          : b:110002
LocalEntityInfoName        : All protected assets
```

Get a specific outbound block rule.

## PARAMETERS

### -EntityParams
JSON string URI encoded object {id: string, direction: AssetDirection, scope: AssetScope}

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
.

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
.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.String

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAuthError

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IRule

## NOTES

ALIASES

## RELATED LINKS

