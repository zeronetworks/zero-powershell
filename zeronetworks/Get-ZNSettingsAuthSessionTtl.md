---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingsauthsessionttl
schema: 2.0.0
---

# Get-ZNSettingsAuthSessionTtl

## SYNOPSIS
Get the portal session ttl settings

## SYNTAX

```
Get-ZNSettingsAuthSessionTtl [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get the portal session ttl settings

## EXAMPLES

### Example 1: List Portal session TTL
```powershell
Get-ZNSettingsAuthSessionTtl
```

```output
ItemPortalTokenTtl
------------------
              8640
```

This cmdlet lists the session TTL for the portal.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISessionTtl

## NOTES

## RELATED LINKS

