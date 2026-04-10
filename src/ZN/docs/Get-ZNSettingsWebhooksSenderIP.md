---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingswebhookssenderip
schema: 2.0.0
---

# Get-ZNSettingsWebhooksSenderIP

## SYNOPSIS
Get Sender IP Configuration

## SYNTAX

```
Get-ZNSettingsWebhooksSenderIP [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get Sender IP Configuration

## EXAMPLES

### Example 1: Get webhook sender IP
```powershell
Get-ZNSettingsWebhooksSenderIP
```

```output
SenderIP
--------
34.23.121.192
```

This cmdlet gets the webhooks sender ip.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsWebhooksSenderIP

## NOTES

## RELATED LINKS

