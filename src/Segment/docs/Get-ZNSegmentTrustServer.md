---
external help file:
Module Name: ZN.Segment
online version: https://github.com/zn.segment/get-znsegmenttrustserver
schema: 2.0.0
---

# Get-ZNSegmentTrustServer

## SYNOPSIS
List trust server deployments

## SYNTAX

```
Get-ZNSegmentTrustServer [<CommonParameters>]
```

## DESCRIPTION
List trust server deployments

## EXAMPLES

### Example 1: List trust server deployments
```powershell
Get-ZNSegmentTrustServer
```

```output
DefaultGateway  DnsIPAddress IPAddress    Id                                   Name   State Status SubnetMask                                                                                                                                                      --------------  ------------ ---------    --                                   ----   ----- ------ ----------
192.168.200.254 192.168.10.0 192.168.10.1 6bcb4fce-187a-4edd-9d9a-2d89b95091aa trust1              255.255.0.0
```

This cmdlet lists trust server deployments for an environment.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.String

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAuthError

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IDeployment

## NOTES

ALIASES

## RELATED LINKS

