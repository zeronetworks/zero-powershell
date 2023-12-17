---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znsettingsfirewallignoredgpo
schema: 2.0.0
---

# Get-ZNSettingsFirewallIgnoredGpo

## SYNOPSIS
Returns the properties of ignored GPO rules Firewall settings.

## SYNTAX

```
Get-ZNSettingsFirewallIgnoredGpo [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of ignored GPO rules Firewall settings.

## EXAMPLES

### Example 1: Get Asset health - Windows firewall GPO rule checkup exclusions settings
```powershell
Get-ZNSettingsFirewallIgnoredGpo

InboundList OutboundList
----------- ------------
{test}      {}
```

This cmdlet returns the Asset health - Windows firewall GPO rule checkup exclusions settings.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsFirewallIgnoredGpo

## NOTES

## RELATED LINKS

