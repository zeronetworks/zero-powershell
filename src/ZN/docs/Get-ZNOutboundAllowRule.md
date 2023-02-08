---
external help file:
Module Name: ZN.Api
online version: https://github.com/zn.api/get-znoutboundallowrule
schema: 2.0.0
---

# Get-ZNOutboundAllowRule

## SYNOPSIS
Returns the properties of an Outbound Allow rule.

## SYNTAX

### List (Default)
```
Get-ZNOutboundAllowRule [-EntityParams <String>] [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>]
 [<CommonParameters>]
```

### Get
```
Get-ZNOutboundAllowRule -RuleId <String> [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of an Outbound Allow rule.

## EXAMPLES

### Example 1: List outbound allow rules
```powershell
Get-ZNOutboundAllowRule
```

```output
Action CreatedAt     Description Direction ExpiresAt Id                                   LocalEntityId LocalProcessesList ParentId ParentType RemoteEntityIdsList State UpdatedAt
------ ---------     ----------- --------- --------- --                                   ------------- ------------------ -------- ---------- ------------------- ----- ---------
1      1665518196557             2         0         0a1444a2-7cb7-4319-a0de-a013d6b67402 b:110002      {*}                         0          {b:120808080820}    1   
```

This cmdlet gets outbound allow rules from the environment.

### Example 2: Get a specific outbound allow rule
```powershell
 Get-ZNOutboundAllowRule -RuleId "0a1444a2-7cb7-4319-a0de-a013d6b67402"
```

```output
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
ItemAction                 : 1
ItemCreatedAt              : 1665518196557
ItemDescription            : 
ItemDirection              : 2
ItemExpiresAt              : 0
ItemId                     : 0a1444a2-7cb7-4319-a0de-a013d6b67402
ItemLocalEntityId          : b:110002
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {b:120808080820}
ItemRemoteEntityInfos      : {8.8.8.8}
ItemState                  : 1
ItemUpdatedAt              : 
LocalEntityInfoId          : b:110002
LocalEntityInfoName        : All protected assets
```

Get a specific outbound allow rule.

## PARAMETERS

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IRule

## NOTES

ALIASES

## RELATED LINKS

