---
external help file:
Module Name: ZN.Api
online version: https://github.com/zn.api/get-zntrustserver
schema: 2.0.0
---

# Get-ZNTrustServer

## SYNOPSIS
Returns a list of trust servers.

## SYNTAX

```
Get-ZNTrustServer [<CommonParameters>]
```

## DESCRIPTION
Returns a list of trust servers.

## EXAMPLES

### Example 1: List trust server deployments
```powershell
Get-ZNTrustServer
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IDeployment

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

## RELATED LINKS

