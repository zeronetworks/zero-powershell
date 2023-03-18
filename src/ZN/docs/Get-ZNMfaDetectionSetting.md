---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znmfadetectionsetting
schema: 2.0.0
---

# Get-ZNMfaDetectionSetting

## SYNOPSIS
Returns the properties of MFA detection settings.

## SYNTAX

```
Get-ZNMfaDetectionSetting [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of MFA detection settings.

## EXAMPLES

### Example 1: Get MFA detection setting
```powershell
Get-ZNMfaDetectionSetting
```

```output
3
```

This cmdlet gets the MFA detection (cooldown) setting under Protection.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsMfaDetection

## NOTES

ALIASES

## RELATED LINKS

