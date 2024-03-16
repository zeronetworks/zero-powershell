---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znsettingsbreakglass
schema: 2.0.0
---

# Get-ZNSettingsBreakGlass

## SYNOPSIS
Get break glass settings

## SYNTAX

```
Get-ZNSettingsBreakGlass [<CommonParameters>]
```

## DESCRIPTION
Get break glass settings

## EXAMPLES

### Example 1: Get BreakGlass settings
```powershell
Get-ZNSettingsBreakGlass
```

```output
AgentConfigAllowIdentity : False
AgentConfigAllowInbound  : False
AgentConfigAllowOutbound : False
TrustConfigAllowIdentity : False
TrustConfigAllowInbound  : False
TrustConfigAllowOutbound : False
```

This cmdlet gets the cloud break glass settings.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsBreakGlass

## NOTES

## RELATED LINKS

