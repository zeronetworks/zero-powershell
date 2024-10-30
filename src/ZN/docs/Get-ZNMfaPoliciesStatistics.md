---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znmfapoliciesstatistics
schema: 2.0.0
---

# Get-ZNMfaPoliciesStatistics

## SYNOPSIS
Returns an object with MFA statistics.

## SYNTAX

```
Get-ZNMfaPoliciesStatistics [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns an object with MFA statistics.

## EXAMPLES

### Example 1: Get MFA policy statistics
```powershell
Get-ZNMfaPoliciesStatistics
```

```output
3
```

This cmdlet gets a total count of MFA polcies for the environment.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IReactivePoliciesStatistics

## NOTES

## RELATED LINKS

