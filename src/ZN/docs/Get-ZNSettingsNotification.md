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
Get-ZNSettingsNotification [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of the Mail Notification settings.

## EXAMPLES

### Example 1: Get notifications settings
```powershell
Get-ZNSettingsNotification
```

```output
AssetPostponed AssetProtected AssetQueued AssetUnprotected
-------------- -------------- ----------- ----------------
False          False          False       False
```

This cmdlet returns the notifications settings.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsNotification

## NOTES

## RELATED LINKS

