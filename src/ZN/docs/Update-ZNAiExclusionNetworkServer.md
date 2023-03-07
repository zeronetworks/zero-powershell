---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/update-znaiexclusionnetworkserver
schema: 2.0.0
---

# Update-ZNAiExclusionNetworkServer

## SYNOPSIS
Set AI network exclusion for servers: lists of tcp/udp ports / ports ranges + boolean for icmp protocol, and a list of processes to ignore during learning.

## SYNTAX

```
Update-ZNAiExclusionNetworkServer [-Icmp] [-ProcessesList <String[]>] [-TcpPorts <String>]
 [-UdpPorts <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Set AI network exclusion for servers: lists of tcp/udp ports / ports ranges + boolean for icmp protocol, and a list of processes to ignore during learning.

## EXAMPLES

### Example 1: Update AI Exclusion settings for servers
```powershell
Update-ZNAiExclusionNetworkServer -Icmp -ProcessesList @()  -TcpPorts "" -UdpPorts ""
```

```output
Icmp ProcessesList TcpPorts UdpPorts
---- ------------- -------- --------
True {}     
```

This cmdlet updates the AI exclusions for servers under Data Collection.

### Example 2: Add a setting to the current settings.
```powershell
$aiSettings = Get-ZNAiExclusionNetworkServer
Update-ZNAiExclusionNetworkServer -Icmp:$aiSettings.Icmp -ProcessesList $aiSettings.ProcessesList  -TcpPorts ($aiSettings.TcpPorts += "443") -UdpPorts $aiSettings.UdpPorts
```

```output
Icmp ProcessesList TcpPorts UdpPorts
---- ------------- -------- --------
True {}            443      
```

Use exisitng settings to update or add ports or processes.

## PARAMETERS

### -Icmp
.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
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
Parameter Sets: (All)
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
Parameter Sets: (All)
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
Parameter Sets: (All)
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

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAiExclusionInfo

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

## RELATED LINKS

