---
external help file:
Module Name: ZN.Segment
online version: https://github.com/zn.segment/get-znsegmentinboundallowrule
schema: 2.0.0
---

# Get-ZNSegmentInboundAllowRule

## SYNOPSIS
Get an inbound allow rule

## SYNTAX

### List (Default)
```
Get-ZNSegmentInboundAllowRule [-EntityParams <String>] [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>]
 [<CommonParameters>]
```

### Get
```
Get-ZNSegmentInboundAllowRule -RuleId <String> [<CommonParameters>]
```

## DESCRIPTION
Get an inbound allow rule

## EXAMPLES

### Example 1: List inbound allow rules
```powershell
Get-ZNSegmentInboundAllowRule
```

```output
{Action CreatedAt     Description                                      Direction ExpiresAt Id                                   LocalEntityId LocalProcessesList ParentId ParentType RemoteEntityIdsList State UpdatedAt
------ ---------     -----------                                      --------- --------- --                                   ------------- ------------------ -------- ---------- ------------------- ----- ---------
1      1652856440164 Allow communication between all nodes in cluster 1         0         be2bdc05-7837-4125-88ba-983e3ff7e763 g:c:wq1SFxhc  {*}                         0          {g:c:wq1SFxhc}      1     
1      1648717512348 Access portal                                    1         0         f645ad68-9c9c-4172-aeb4-b139048eaf3b a:a:EP2KKITZ  {*}                         0          {b:110001}          1     1651260692136
```

This cmdlet gets inbound allow rules from the environment.

### Example 2: Get a specific inbound allow rule
```powershell
Get-ZNSegmentInboundAllowRule -RuleId "be2bdc05-7837-4125-88ba-983e3ff7e763"
```

```output
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
ItemAction                 : 1
ItemCreatedAt              : 1652856440164
ItemDescription            : Allow communication between all nodes in cluster
ItemDirection              : 1
ItemExpiresAt              : 0
ItemId                     : be2bdc05-7837-4125-88ba-983e3ff7e763
ItemLocalEntityId          : g:c:wq1SFxhc
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Segment.Models.PortsListItem}
ItemRemoteEntityIdsList    : {g:c:wq1SFxhc}
ItemRemoteEntityInfos      : {Hyper-V cluster (deleted)}
ItemState                  : 1
ItemUpdatedAt              : 
LocalEntityInfoId          : g:c:wq1SFxhc
LocalEntityInfoName        : Hyper-V cluster (deleted)
```

Get a specific inbound allow rule.

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

