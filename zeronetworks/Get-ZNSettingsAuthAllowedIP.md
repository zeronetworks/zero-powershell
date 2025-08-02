---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingsauthallowedip
schema: 2.0.0
---

# Get-ZNSettingsAuthAllowedIP

## SYNOPSIS
Get the portal allowed ips settings

## SYNTAX

```
Get-ZNSettingsAuthAllowedIP [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get the portal allowed ips settings

## EXAMPLES

### Example 1: List Portal Allowed IPs
```powershell
Get-ZNSettingsAuthAllowedIP
```

```output
ItemAllowedIPs
------------------
b:12325934e620
```

This cmdlet lists the allowed Ips for the portal.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAllowedIps

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS

