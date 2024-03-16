---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znsegmentserver
schema: 2.0.0
---

# Get-ZNSegmentServer

## SYNOPSIS
Returns a list of segment servers.

## SYNTAX

```
Get-ZNSegmentServer [<CommonParameters>]
```

## DESCRIPTION
Returns a list of segment servers.

## EXAMPLES

### Example 1: List Segment Servers
```powershell
Get-ZNSegmentServer
```

```output
AssetId        : a:a:sMnd5NkL
DefaultGateway : 10.0.0.1
DnsIPAddress   : 
IPAddress      : 
Id             : f56dd59d-ab65-45ed-871c-b6c0742db568
Name           : ts01
State          : 1
Status         : 2
SubnetMask     : 255.255.255.0
```

This cmdlet lists all Segment servers for the environment.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IDeploymentsList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS

