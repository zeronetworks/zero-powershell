---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znadsecondarysetting
schema: 2.0.0
---

# Get-ZNAdSecondarySetting

## SYNOPSIS
List the secondary AD settings in Asset Managment

## SYNTAX

```
Get-ZNAdSecondarySetting [<CommonParameters>]
```

## DESCRIPTION
List the secondary AD settings in Asset Managment

## EXAMPLES

### Example 1: Get Active Directory Secondary setting
```powershell
Get-ZNAdSecondarySetting
```

```output
AdInfoDomainControllerFqdn AdInfoDomainName
-------------------------- ----------------
dc1.zero.labs              zero.labs
```

This cmdlet gets the secondary Active Directory settings under Asset Management.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsAdSecondary

## NOTES

ALIASES

## RELATED LINKS

