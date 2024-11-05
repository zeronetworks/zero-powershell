---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znassetsstatesstatistics
schema: 2.0.0
---

# Get-ZNAssetsStatesStatistics

## SYNOPSIS
Returns an object with asset state statistics.

## SYNTAX

```
Get-ZNAssetsStatesStatistics [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns an object with asset state statistics.

## EXAMPLES

### Example 1: Get asset connected count
```powershell
Get-ZNAssetsStatesStatistics
```

```output
10
```

This cmdlet returns the number of connected assets.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetsStatesStatistics

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS

