---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znsettingsprivilegedport
schema: 2.0.0
---

# Get-ZNSettingsPrivilegedPort

## SYNOPSIS
Get Privileged Ports settings in Network segmentation

## SYNTAX

```
Get-ZNSettingsPrivilegedPort [<CommonParameters>]
```

## DESCRIPTION
Get Privileged Ports settings in Network segmentation

## EXAMPLES

### Example 1: Get privileged ports settings
```powershell
Get-ZNSettingsPrivilegedPort

ItemTcpPorts                  ItemUdpPorts
------------                  ------------
21-23,445,3389,5985-5986,9389 
```

This cmdlet returns the privileged ports settings.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsPrivilegedPortsItem

## NOTES

## RELATED LINKS

