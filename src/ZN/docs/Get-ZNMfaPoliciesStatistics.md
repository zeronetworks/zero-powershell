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
Get-ZNMfaPoliciesStatistics [<CommonParameters>]
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IReactivePoliciesStatistics

## NOTES

## RELATED LINKS

