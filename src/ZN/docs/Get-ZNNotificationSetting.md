---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znnotificationsetting
schema: 2.0.0
---

# Get-ZNNotificationSetting

## SYNOPSIS
Returns the properties of the Mail Notification settings.

## SYNTAX

```
Get-ZNNotificationSetting [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of the Mail Notification settings.

## EXAMPLES

### Example 1: Get the Mail notifications setting
```powershell
Get-ZNNotificationSetting
```

```output
AssetProtected AssetQueued AssetUnprotected
-------------- ----------- ----------------
True           True        True
```

This cmdlet gets the Mail Notificiations settings

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

