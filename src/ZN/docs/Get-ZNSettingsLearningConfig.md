---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znsettingslearningconfig
schema: 2.0.0
---

# Get-ZNSettingsLearningConfig

## SYNOPSIS
Get Learning Config settings in Network Segementation

## SYNTAX

```
Get-ZNSettingsLearningConfig [<CommonParameters>]
```

## DESCRIPTION
Get Learning Config settings in Network Segementation

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsLearningConfig

## NOTES

## RELATED LINKS

