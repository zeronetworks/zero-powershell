---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingsday2automation
schema: 2.0.0
---

# Get-ZNSettingsDay2Automation

## SYNOPSIS
Get day 2 settings automation

## SYNTAX

```
Get-ZNSettingsDay2Automation [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get day 2 settings automation

## EXAMPLES

### Example 1: Get Day 2 settings
```powershell
Get-ZNSettingsDay2Automation
```

```output
State
-----
False
```

This cmdlet gets the Day 2 automation settings.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsDay2Automation

## NOTES

## RELATED LINKS

