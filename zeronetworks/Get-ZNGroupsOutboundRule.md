---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-zngroupsoutboundrule
schema: 2.0.0
---

# Get-ZNGroupsOutboundRule

## SYNOPSIS
Returns the properties of an Outbound rule.

## SYNTAX

### List (Default)
```
Get-ZNGroupsOutboundRule -GroupId <String> -GroupType <String> [-AccountName <String>] [-AddAncestors]
 [-AddBuiltins] [-Direction <String>] [-EnrichRemoteIps] [-EntityParams <String>] [-Filters <String>]
 [-Limit <Int32>] [-Offset <Int32>] [-Order <String>] [-OrderColumns <String>] [-WithCount]
 [<CommonParameters>]
```

### Get
```
Get-ZNGroupsOutboundRule -GroupId <String> -GroupType <String> -RuleId <String> [-AccountName <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of an Outbound rule.

## EXAMPLES

### Example 1: List rules for a specific group.
```powershell
$group = (Get-ZNGroup -Search "Domain controllers").Items | where {$_.Domain -eq "tag"}
Get-ZNGroupsOutboundRule -Groupid $group.Id -GroupType tag -AddBuiltins
```

```output
CreatedAt     RemoteEntityInfos                           LocalEntityInfoName  Ruleclass ActivitiesCount Id                                   CreatedByEnforcementS
                                                                                                                                              ource
---------     -----------------                           -------------------  --------- --------------- --                                   ---------------------
1694372599763 {ot1777}                                    All segmented assets           0               d69a32ec-a5ea-4915-a33f-297c6ec2ceec 5                    
1675961668454 {Any asset}                                 All segmented assets           0               721c3616-4914-4b66-b987-64af3d50dbae 5                    
1675961668436 {Any asset except segmented OT/IoT devices} All segmented assets           36490           b49360ce-3b4b-4e67-a613-42d4704d097f 5
```

This cmdlet gets rules for a specific group.

### Example 2: Get a specific rule for a specific group
```powershell
Get-ZNGroupsOutboundAllowRule -Groupid $group.Id -GroupType tag -RuleId d69a32ec-a5ea-4915-a33f-297c6ec2ceec
```

```output
ApprovedById               : 
ApprovedByName             : 
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
ItemAction                 : 1
ItemActivitiesCount        : 0
ItemApprovedAt             : 
ItemCreatedAt              : 1694372599763
ItemDescription            : 
ItemDirection              : 2
ItemExcludedEntityInfos    : {}
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : d69a32ec-a5ea-4915-a33f-297c6ec2ceec
ItemLocalEntityId          : b:110002
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {a:t:OeG7qsVV}
ItemRemoteEntityInfos      : {ot1777}
ItemRuleclass              : 
ItemState                  : 1
ItemUpdatedAt              : 
LocalEntityInfoId          : b:110002
LocalEntityInfoName        : All segmented assets
UpdatedById                : 
UpdatedByName              : 
```

This cmdlet can get a specific rule for a specific group.

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

### -EnrichRemoteIps
enrich remote IPs

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
JSON string URI encoded set of filters

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

### -GroupId
groupId to filter on

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

### -GroupType
group type to filter on

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
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Order
What order to sort the results

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

### -OrderColumns
what column to order on

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

