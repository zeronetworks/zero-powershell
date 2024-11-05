---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingslearningconfig
schema: 2.0.0
---

# Get-ZNSettingsLearningConfig

## SYNOPSIS
Get Learning Config settings in Network Segmentation

## SYNTAX

```
Get-ZNSettingsLearningConfig [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get Learning Config settings in Network Segmentation

## EXAMPLES

### Example 1: Get AI Learning Config
```powershell
Get-ZNSettingsLearningConfig
```

```output
AllowQueueForever AllowQuickLearning
----------------- ------------------
True              False
```

This cmdlet gets the lerarning config settings from AI.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsLearningConfig

## NOTES

## RELATED LINKS

