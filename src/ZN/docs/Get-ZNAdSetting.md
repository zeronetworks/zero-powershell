---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znadsetting
schema: 2.0.0
---

# Get-ZNAdSetting

## SYNOPSIS
Get the AD settings in Asset Managment

## SYNTAX

```
Get-ZNAdSetting [<CommonParameters>]
```

## DESCRIPTION
Get the AD settings in Asset Managment

## EXAMPLES

### Example 1: Gets the Active Directory Setting
```powershell
Get-ZNAdSetting
```

```output
AdInfoDomainControllerFqdn AdInfoDomainName AdInfoUseLdaps AdInfoUsername
-------------------------- ---------------- -------------- --------------
dc1.zero.labs              zero.labs                 False znremotemanagement
```

The cmdlet lists the primary Active Directory settings under Asset Management.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsAdInfo

## NOTES

ALIASES

## RELATED LINKS

