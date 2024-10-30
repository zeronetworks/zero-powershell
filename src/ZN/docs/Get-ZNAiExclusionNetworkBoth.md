---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znaiexclusionnetworkboth
schema: 2.0.0
---

# Get-ZNAiExclusionNetworkBoth

## SYNOPSIS
Get AI network exclusion for clients and servers: lists of tcp/udp ports / ports ranges + boolean for icmp protocol, and a list of processes to ignore during learning.

## SYNTAX

```
Get-ZNAiExclusionNetworkBoth [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get AI network exclusion for clients and servers: lists of tcp/udp ports / ports ranges + boolean for icmp protocol, and a list of processes to ignore during learning.

## EXAMPLES

### Example 1: Get the AI Exclusion Setting for all asset types
```powershell
Get-ZNAiExclusionNetworkBoth
```

```output

Icmp  ProcessesList TcpPorts UdpPorts
----  ------------- -------- --------
False {}
```

This cmdlet returns the AI Exclusion setting for all asset types under Data Collection.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAiExclusionInfo

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS

