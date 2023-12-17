---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znsettingsclusterstrategy
schema: 2.0.0
---

# Get-ZNSettingsClusterStrategy

## SYNOPSIS
Returns cluster strategy configuration.

## SYNTAX

```
Get-ZNSettingsClusterStrategy [<CommonParameters>]
```

## DESCRIPTION
Returns cluster strategy configuration.

## EXAMPLES

### Example 1: Get Segment server cluster strategy
```powershell
Get-ZNSettingsClusterStrategy

PreferredDeploymentId                Strategy
---------------------                --------
b41212f2-8f17-4d2b-ad2c-d077fc74fc0d 1
```

This cmdlet returns the current setting for Segment server cluster strategy.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsClusterStrategy

## NOTES

## RELATED LINKS

