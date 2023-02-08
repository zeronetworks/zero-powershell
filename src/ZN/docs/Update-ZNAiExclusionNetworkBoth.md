---
external help file:
Module Name: ZN.Api
online version: https://github.com/zn.api/update-znaiexclusionnetworkboth
schema: 2.0.0
---

# Update-ZNAiExclusionNetworkBoth

## SYNOPSIS
Set AI network exclusion for clients and servers: lists of tcp/udp ports / ports ranges + boolean for icmp protocol, and a list of processes to ignore during learning.

## SYNTAX

### SetExpanded (Default)
```
Update-ZNAiExclusionNetworkBoth [-Icmp] [-ProcessesList <String[]>] [-TcpPorts <String>] [-UdpPorts <String>]
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Set
```
Update-ZNAiExclusionNetworkBoth -Body <IAiExclusionInfo> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Set AI network exclusion for clients and servers: lists of tcp/udp ports / ports ranges + boolean for icmp protocol, and a list of processes to ignore during learning.

## EXAMPLES

### Example 1: {{ Add title here }}
```powershell
{{ Add code here }}
```

```output
{{ Add output here }}
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
{{ Add code here }}
```

```output
{{ Add output here }}
```

{{ Add description here }}

## PARAMETERS

### -Body
.
To construct, see NOTES section for BODY properties and create a hash table.

```yaml
Type: ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAiExclusionInfo
Parameter Sets: Set
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Icmp
.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: SetExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProcessesList
.

```yaml
Type: System.String[]
Parameter Sets: SetExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TcpPorts
.

```yaml
Type: System.String
Parameter Sets: SetExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UdpPorts
.

```yaml
Type: System.String
Parameter Sets: SetExpanded
Aliases:

Required: False
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAiExclusionInfo

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAiExclusionInfo

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`BODY <IAiExclusionInfo>`: .
  - `[Icmp <Boolean?>]`: 
  - `[ProcessesList <String[]>]`: 
  - `[TcpPorts <String>]`: 
  - `[UdpPorts <String>]`: 

## RELATED LINKS

