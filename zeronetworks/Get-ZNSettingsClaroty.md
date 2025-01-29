---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingsclaroty
schema: 2.0.0
---

# Get-ZNSettingsClaroty

## SYNOPSIS
Get Claroty Settings

## SYNTAX

```
Get-ZNSettingsClaroty [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get Claroty Settings

## EXAMPLES

### Example 1: Get Claroty Settings
```powershell
Get-ZNSettingsClaroty
```

```output
ApiUrl                   Token
------                   -----
https://posh.claroty.com
```

This cmdlet gets Claroty settings.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsClaroty

## NOTES

## RELATED LINKS

