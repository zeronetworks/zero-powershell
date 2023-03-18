---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znjamfcredentialssetting
schema: 2.0.0
---

# Get-ZNJamfCredentialsSetting

## SYNOPSIS
Returns the properties for JAMF Credentials Settings.

## SYNTAX

```
Get-ZNJamfCredentialsSetting [<CommonParameters>]
```

## DESCRIPTION
Returns the properties for JAMF Credentials Settings.

## EXAMPLES

### Example 1: Get JAMF Credentials Setting
```powershell
Get-ZNJamfCredentialsSetting
```

```output
Host                Password        username
--------            --------------- --------------
host.jamfcloud.com                  devops
```

This cmdlet will get the JAMF credentials setting under Asset Management.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsJamfCredentials

## NOTES

ALIASES

## RELATED LINKS

