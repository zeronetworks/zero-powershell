---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingspushnotification
schema: 2.0.0
---

# Get-ZNSettingsPushNotification

## SYNOPSIS
Get Push Notifications Settings

## SYNTAX

```
Get-ZNSettingsPushNotification [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get Push Notifications Settings

## EXAMPLES

### Example 1: Get Push Notifications settings
```powershell
Get-ZNSettingsPushNotification
```

```output
Host                      Id                                   IdentityProvider
----                      --                                   ----------------
login.microsoftonline.com 4bbf96f1-7cc5-4711-84cd-f16ba41265a8 microsoftAuthenticator
```

This cmdlet returns the Push Notifications settings.

## PARAMETERS

### -AccountName
this value is per customer / partner

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: (Read-ZNJWTtoken $env:ZNApiKey).aud.split(".")[0]
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsPushNotificationsList

## NOTES

## RELATED LINKS

