---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znassethealthstate
schema: 2.0.0
---

# Get-ZNAssetHealthState

## SYNOPSIS
Get asset health state

## SYNTAX

```
Get-ZNAssetHealthState -AssetId <String> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get asset health state

## EXAMPLES

### Example 1: Get Health State
```powershell
Get-ZNAssetHealthState -AssetId a:d:FMVqm8jZ
```

```output
HealthIssuesList HealthStatus
---------------- ------------
                 
```

This cmdlet gets an asset health state.

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

### -AssetId
assetId to filter on

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IHealthStateObject

## NOTES

## RELATED LINKS

