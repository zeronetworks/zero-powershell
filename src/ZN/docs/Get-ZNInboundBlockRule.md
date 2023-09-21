---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-zninboundblockrule
schema: 2.0.0
---

# Get-ZNInboundBlockRule

## SYNOPSIS
Returns the properties of the Inbound Block rule.

## SYNTAX

### List (Default)
```
Get-ZNInboundBlockRule [-AddAncestors] [-AddBuiltins] [-EntityParams <String>] [-Filters <String>]
 [-Limit <Int32>] [-Offset <Int32>] [-WithCount] [<CommonParameters>]
```

### Get
```
Get-ZNInboundBlockRule -RuleId <String> [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of the Inbound Block rule.

## EXAMPLES

### Example 1: List inbound block rules
```powershell
Get-ZNInboundBlockRule
Action CreatedAt     Description Direction ExpiresAt Id                                   LocalEntityId LocalProcessesList ParentId ParentType RemoteEntityIdsList State UpdatedAt
------ ---------     ----------- --------- --------- --                                   ------------- ------------------ -------- ---------- ------------------- ----- ---------
2      1665490925245             1         0         9f3503cf-02ce-4231-b167-c9e2a2446311 a:a:cxIJepiA  {*}                         0          {a:a:5wiknOhs}      1     
```

This cmdlet gets inbound block rules from the environment.

### Example 2: Get a specific inbound block rule
```powershell
Get-ZNInboundBlockRule -RuleId "9f3503cf-02ce-4231-b167-c9e2a2446311"
reatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
ItemAction                 : 2
ItemCreatedAt              : 1665490925245
ItemDescription            : 
ItemDirection              : 1
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : 9f3503cf-02ce-4231-b167-c9e2a2446311
ItemLocalEntityId          : a:a:cxIJepiA
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {a:a:5wiknOhs}
ItemRemoteEntityInfos      : {WIN7}
ItemState                  : 1
ItemUpdatedAt              : 1671621569513
LocalEntityInfoId          : a:a:cxIJepiA
LocalEntityInfoName        : win8-1
UpdatedById                : 
UpdatedByName              : 
```

Get a specific inbound block rule.

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

