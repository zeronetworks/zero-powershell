---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znfirewallsetting
schema: 2.0.0
---

# Get-ZNFirewallSetting

## SYNOPSIS
Returns the properties of Firewall settings.

## SYNTAX

```
Get-ZNFirewallSetting [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of Firewall settings.

## EXAMPLES

### Example 1: Get the Create implicit ICMP rules setting
```powershell
 Get-ZNFirewallSetting
 ```

```

True
```

This cmdlet gets the Firewall - Create implicit ICMP rules setting under Protection.
True is "on" and False is "off".

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.Boolean

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

## RELATED LINKS

