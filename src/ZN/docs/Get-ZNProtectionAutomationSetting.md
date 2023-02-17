---
external help file:
Module Name: ZN.Api
online version: https://github.com/zeronetworkszn.api/get-znprotectionautomationsetting
schema: 2.0.0
---

# Get-ZNProtectionAutomationSetting

## SYNOPSIS
Returns the properties of Protection Automation settings.

## SYNTAX

```
Get-ZNProtectionAutomationSetting [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of Protection Automation settings.

## EXAMPLES

### Example 1: Get Protection Automation setting
```powershell
Get-ZNProtectionAutomationSetting
```

```output
ItemDomain ItemHasProtectionPolicy ItemId       ItemName
---------- ----------------------- ------       --------
zero.labs                    False g:a:zPeRnP0P ZeroNetworksProtectedAssets
```

This cmdlet gets the Protection Automation setting under Protection.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IGroupCandidate

## NOTES

ALIASES

## RELATED LINKS

