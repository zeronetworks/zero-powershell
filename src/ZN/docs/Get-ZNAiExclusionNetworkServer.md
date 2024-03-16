---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znaiexclusionnetworkserver
schema: 2.0.0
---

# Get-ZNAiExclusionNetworkServer

## SYNOPSIS
Get AI network exclusion for servers: lists of tcp/udp ports / ports ranges + boolean for icmp protocol, and a list of processes to ignore during learning.

## SYNTAX

```
Get-ZNAiExclusionNetworkServer [<CommonParameters>]
```

## DESCRIPTION
Get AI network exclusion for servers: lists of tcp/udp ports / ports ranges + boolean for icmp protocol, and a list of processes to ignore during learning.

## EXAMPLES

### Example 1: Get the AI Exclusion Setting for servers
```powershell
Get-ZNAiExclusionNetworkServer
```

```output
Icmp  ProcessesList TcpPorts UdpPorts
----  ------------- -------- --------
False {}                     
```

This cmdlet returns the AI Exclusion setting for servers under Data Collection.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAiExclusionInfo

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS

