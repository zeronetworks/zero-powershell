---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znsettingsnotification
schema: 2.0.0
---

# Get-ZNSettingsNotification

## SYNOPSIS
Returns the properties of the Mail Notification settings.

## SYNTAX

```
Get-ZNSettingsNotification [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of the Mail Notification settings.

## EXAMPLES

### Example 1: Get notifications settings
```powershell
Get-ZNSettingsNotification

AssetPostponed AssetProtected AssetQueued AssetUnprotected
-------------- -------------- ----------- ----------------
False          False          False       False
```

This cmdlet returns the notifications settings.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsNotification

## NOTES

ALIASES

## RELATED LINKS

