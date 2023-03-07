---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/new-zninboundblockrule
schema: 2.0.0
---

# New-ZNInboundBlockRule

## SYNOPSIS
Returns the properties of the created Inbound Block rule.

## SYNTAX

```
New-ZNInboundBlockRule -LocalEntityId <String> -LocalProcessesList <String[]> -PortsList <IPortsListItem[]>
 -RemoteEntityIdsList <String[]> -State <Int32> [-Description <String>] [-ExcludedLocalIdsList <String[]>]
 [-ExpiresAt <Int32>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of the created Inbound Block rule.

## EXAMPLES

### Example 1: Create an inbound block rule
```powershell
$portsList = New-ZNPortsList -Protocol Any
$source = (Get-ZNInboundBlockRulesSourceCandidate -Search "win7").Items
$destination = (Get-ZNInboundBlockRulesDestinationCandidate -Search "all protected Assets").Items
New-ZNInboundBlockRule -LocalEntityId $destination.Id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source.id) -State 1
```

```output
CCreatedByEnforcementSource : 0
CreatedById                : m:86786c2f022cf2bd7dc38f165c98b4ee736c8c3b
CreatedByName              : PowerShell
CreatedByUserRole          : 4
ItemAction                 : 2
ItemCreatedAt              : 1665759006696
ItemDescription            : 
ItemDirection              : 1
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : 642e263c-0e22-4c36-963a-46722b6988ce
ItemLocalEntityId          : b:110002
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {a:a:5wiknOhs}
ItemState                  : 1
ItemUpdatedAt              : 
UpdatedById                : 
UpdatedByName              : 
```

This cmdlet creates an inbound block rule for the environment.

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

### -ExcludedLocalIdsList
.

```yaml
Type: System.String[]
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

