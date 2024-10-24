---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/get-znsettingsclusterstrategy
schema: 2.0.0
---

# Get-ZNSettingsClusterStrategy

## SYNOPSIS
Returns cluster strategy configuration.

## SYNTAX

```
Get-ZNSettingsClusterStrategy [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns cluster strategy configuration.

## EXAMPLES

### Example 1: Get Segment server cluster strategy
```powershell
Get-ZNSettingsClusterStrategy
```

```output
PreferredDeploymentId                Strategy
---------------------                --------
b41212f2-8f17-4d2b-ad2c-d077fc74fc0d 1
```

This cmdlet returns the current setting for Segment server cluster strategy.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsClusterStrategy

## NOTES

## RELATED LINKS

