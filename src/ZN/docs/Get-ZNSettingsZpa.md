---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znsettingszpa
schema: 2.0.0
---

# Get-ZNSettingsZpa

## SYNOPSIS
Get ZPA settings in Integrations

## SYNTAX

```
Get-ZNSettingsZpa [<CommonParameters>]
```

## DESCRIPTION
Get ZPA settings in Integrations

## EXAMPLES

### Example 1: Get ZPA settings
```powershell
Get-ZNSettingsZpa

ClientOutboundSubnet GatewayIpsList IsEnabled PortsToMfaTcp PortsToMfaUdp
-------------------- -------------- --------- ------------- -------------
                                    False                   
```

This cmdlet returns the ZPA settings.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsZpa

## NOTES

ALIASES

## RELATED LINKS

