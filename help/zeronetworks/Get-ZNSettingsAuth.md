---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/get-znsettingsauth
schema: 2.0.0
---

# Get-ZNSettingsAuth

## SYNOPSIS
Get the portal security settings

## SYNTAX

```
Get-ZNSettingsAuth [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get the portal security settings

## EXAMPLES

### Example 1: Get portal security setting
```powershell
Get-ZNSettingsAuth
```

```output
10080
```

This cmdlet returns the Portal Security setting under System.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsAuth

## NOTES

## RELATED LINKS
