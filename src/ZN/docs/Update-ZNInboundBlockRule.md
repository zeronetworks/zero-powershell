---
external help file:
Module Name: ZN.Api
online version: https://github.com/zn.api/update-zninboundblockrule
schema: 2.0.0
---

# Update-ZNInboundBlockRule

## SYNOPSIS
Returns the properties of the updated Inbound Block rule.

## SYNTAX

```
Update-ZNInboundBlockRule -RuleId <String> -LocalEntityId <String> -LocalProcessesList <String[]>
 -PortsList <IPortsListItem[]> -RemoteEntityIdsList <String[]> -State <Int32> [-Description <String>]
 [-ExpiresAt <Int32>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of the updated Inbound Block rule.

## EXAMPLES

### Example 1: Update inbound block rule
```powershell
#Get the Rule
$rule = Get-ZNInboundBlockRule | where {$_.Description -eq "Test Rule"}
# add an asset to the source list
$rule.RemoteEntityIdsList += (Search-ZNAsset -Fqdn fs1.zero.labs)
#Update the rule
Update-ZNInboundBlockRule -RuleId $rule.id -ExpiresAt $rule.ExpiresAt -LocalEntityId $rule.LocalEntityId -LocalProcessesList $rule.LocalProcessesList -PortsList $rule.PortsList -RemoteEntityIdsList $rule.RemoteEntityIdsList -State $rule.State -Description $rule.Description
```

```output
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
ItemAction                 : 2
ItemCreatedAt              : 1665664250443
ItemDescription            : Test Rule
ItemDirection              : 1
ItemExpiresAt              : 0
ItemId                     : c857c4e6-1c91-4e00-bf13-5bb3c702a396
ItemLocalEntityId          : b:110002
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {b:120101010120, b:120101010220}
ItemRemoteEntityInfos      : 
ItemState                  : 1
ItemUpdatedAt              : 1665664347508
LocalEntityInfoId          : 
LocalEntityInfoName        : 
```

This cmdlet will update an inbound block rule for the environment.

## PARAMETERS

### -Description
.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExpiresAt
.

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -LocalEntityId
.

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

### -LocalProcessesList
.

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PortsList
.
To construct, see NOTES section for PORTSLIST properties and create a hash table.

```yaml
Type: ZeroNetworks.PowerShell.Cmdlets.Api.Models.IPortsListItem[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RemoteEntityIdsList
.

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RuleId
The id of the rule

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

### -State
1=Enabled, 2=Disabled

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: wi

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

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`PORTSLIST <IPortsListItem[]>`: .
  - `[Ports <String>]`: 
  - `[ProtocolType <Int32?>]`: 

## RELATED LINKS
