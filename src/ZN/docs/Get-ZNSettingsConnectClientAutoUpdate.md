---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znsettingsconnectclientautoupdate
schema: 2.0.0
---

# Get-ZNSettingsConnectClientAutoUpdate

## SYNOPSIS
Get Connect client auto update in Settings

## SYNTAX

```
Get-ZNSettingsConnectClientAutoUpdate [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get Connect client auto update in Settings

## EXAMPLES

### Example 1: Get Connect Client auto update settings
```powershell
Get-ZNSettingsConnectClientAutoUpdate  
```

```output
False                
```

This cmdlet returns the connect client auto update settings.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsConnectClientAutoUpdate

## NOTES

## RELATED LINKS

