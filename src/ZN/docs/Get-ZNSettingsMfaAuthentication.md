---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znsettingsmfaauthentication
schema: 2.0.0
---

# Get-ZNSettingsMfaAuthentication

## SYNOPSIS
Returns the properties of MFA authentication settings.

## SYNTAX

```
Get-ZNSettingsMfaAuthentication [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of MFA authentication settings.

## EXAMPLES

### Example 1: Get MFA authentication settings
```powershell
Get-ZNSettingsMfaAuthentication
```

```output
ItemIsRequiresAuth ItemIsSsoForceAuth ItemTokenTtl
------------------ ------------------ ------------
              True              False           60
```

This cmdlet returns the MFA settings settings.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsMfaAuthenticationResponse

## NOTES

## RELATED LINKS

