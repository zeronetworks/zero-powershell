---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingsclientsuntrustedinternet
schema: 2.0.0
---

# Get-ZNSettingsClientsUntrustedInternet

## SYNOPSIS
Get Clients Untrusted Internet settings in System

## SYNTAX

```
Get-ZNSettingsClientsUntrustedInternet [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get Clients Untrusted Internet settings in System

## EXAMPLES

### Example 1: List Clients Untrusted Internet Settings
```powershell
Get-ZNSettingsClientsUntrustedInternet
```

```output
Ports ProtocolType
----- ------------
               256
```

This cmdlet lists the clients untrusted internet settings.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsUntrustedInternet

## NOTES

## RELATED LINKS

