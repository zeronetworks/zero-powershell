---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingswebhook
schema: 2.0.0
---

# Get-ZNSettingsWebhook

## SYNOPSIS
List Webhooks settings

## SYNTAX

```
Get-ZNSettingsWebhook [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
List Webhooks settings

## EXAMPLES

### Example 1: List webhooks
```powershell
Get-ZNSettingsWebhook
```

```output
AuthType               : 1
Description            : 
Id                     : e:w:1ZdDPsky
IsEnabled              : False
Name                   : test
SyncStatusCode         : 0
SyncStatusErrorMessage : 
SyncStatusErrorType    : 1
Triggers               : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.SettingsWebhookTrigger, ZeroNetworks.PowerShell.Cmdlets.Api.Models.SettingsWebhookTrigger}
Url                    : https://test.com/1
ValidateCertificate    : True
```

This cmdlet lists configured webhooks.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsWebhooksList

## NOTES

## RELATED LINKS

