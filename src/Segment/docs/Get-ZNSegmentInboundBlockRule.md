---
external help file:
Module Name: ZN.Segment
online version: https://github.com/zn.segment/get-znsegmentinboundblockrule
schema: 2.0.0
---

# Get-ZNSegmentInboundBlockRule

## SYNOPSIS
Get an inbound block rule

## SYNTAX

### List (Default)
```
Get-ZNSegmentInboundBlockRule [-EntityParams <String>] [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>]
 [<CommonParameters>]
```

### Get
```
Get-ZNSegmentInboundBlockRule -RuleId <String> [<CommonParameters>]
```

## DESCRIPTION
Get an inbound block rule

## EXAMPLES

### Example 1: List inbound block rules
```powershell
Get-ZNSegmentInboundBlockRule
```

```output
Action CreatedAt     Description Direction ExpiresAt Id                                   LocalEntityId LocalProcessesList ParentId ParentType RemoteEntityIdsList State UpdatedAt
------ ---------     ----------- --------- --------- --                                   ------------- ------------------ -------- ---------- ------------------- ----- ---------
2      1665490925245             1         0         9f3503cf-02ce-4231-b167-c9e2a2446311 a:a:cxIJepiA  {*}                         0          {a:a:5wiknOhs}      1     
```

This cmdlet gets inbound block rules from the environment.

### Example 2: Get a specific inbound block rule
```powershell
Get-ZNSegmentInboundBlockRule -RuleId "9f3503cf-02ce-4231-b167-c9e2a2446311"
```

```output
reatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
ItemAction                 : 2
ItemCreatedAt              : 1665490925245
ItemDescription            : 
ItemDirection              : 1
ItemExpiresAt              : 0
ItemId                     : 9f3503cf-02ce-4231-b167-c9e2a2446311
ItemLocalEntityId          : a:a:cxIJepiA
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Segment.Models.PortsListItem}
ItemRemoteEntityIdsList    : {a:a:5wiknOhs}
ItemRemoteEntityInfos      : {WIN7}
ItemState                  : 1
ItemUpdatedAt              : 
LocalEntityInfoId          : a:a:cxIJepiA
LocalEntityInfoName        : win8-1
```

Get a specific inbound block rule.

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

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IApiError

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAuthError

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IRule

## NOTES

ALIASES

## RELATED LINKS

