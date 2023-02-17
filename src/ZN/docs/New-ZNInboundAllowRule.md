---
external help file:
Module Name: ZN.Api
online version: https://github.com/zeronetworkszn.api/new-zninboundallowrule
schema: 2.0.0
---

# New-ZNInboundAllowRule

## SYNOPSIS
Returns the properties of the created Inbound Allow rule.

## SYNTAX

```
New-ZNInboundAllowRule -LocalEntityId <String> -LocalProcessesList <String[]> -PortsList <IPortsListItem[]>
 -RemoteEntityIdsList <String[]> -State <Int32> [-Description <String>] [-ExcludedLocalIdsList <String[]>]
 [-ExpiresAt <Int32>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of the created Inbound Allow rule.

## EXAMPLES

### Example 1: Create an inbound allow rule
```powershell
$portsList = New-ZNPortsList -Protocol TCP -Ports "44,45"
$source = (Get-ZNInboundAllowRulesSourceCandidate -search "any asset").Items
$destination = (Get-ZNInboundAllowRulesDestinationCandidate -Search FS1).Items
New-ZNInboundAllowRule -LocalEntityId $destination.Id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source.id) -State 1
```

```output
CreatedByEnforcementSource : 0
CreatedById                : m:86786c2f022cf2bd7dc38f165c98b4ee736c8c3b
CreatedByName              : PowerShell
CreatedByUserRole          : 4
ItemAction                 : 1
ItemCreatedAt              : 1665758735297
ItemDescription            : 
ItemDirection              : 1
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : 6b38f7ef-2374-4c1e-8c57-da65fe2cbb5f
ItemLocalEntityId          : a:a:GnyWAsYs
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {b:110001}
ItemState                  : 1
ItemUpdatedAt              : 
UpdatedById                : 
UpdatedByName              :
```

This cmdlet creates an inbound allow rule for the environment.

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

