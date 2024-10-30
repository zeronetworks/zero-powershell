---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znmfapoliciesdistribution
schema: 2.0.0
---

# Get-ZNMfaPoliciesDistribution

## SYNOPSIS
Returns and object with MFA distribution.

## SYNTAX

```
Get-ZNMfaPoliciesDistribution [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns and object with MFA distribution.

## EXAMPLES

### Example 1: List the MFA policy distribution
```powershell
Get-ZNMfaPoliciesDistribution
```

```output
Approved Rejected Timestamp
-------- -------- ---------
0        0        1662854400000
0        0        1662940800000
0        0        1663027200000
0        0        1663113600000
0        0        1663200000000
0        0        1663286400000
0        0        1663372800000
0        0        1663459200000
0        0        1663545600000
0        0        1663632000000
0        0        1663718400000
0        0        1663804800000
0        0        1663891200000
0        0        1663977600000
0        0        1664064000000
0        0        1664150400000
0        0        1664236800000
0        0        1664323200000
0        0        1664409600000
0        0        1664496000000
0        0        1664582400000
0        0        1664668800000
0        0        1664755200000
0        0        1664841600000
0        0        1664928000000
0        0        1665014400000
0        0        1665100800000
0        0        1665187200000
0        0        1665273600000
0        0        1665360000000
0        0        1665446400000
```

This cmdlet lists the MFA policy distribution.
There is a count for accepted, rejected and a timestamp (epoch(ms)) for each.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IReactivePolicyDistribution

## NOTES

## RELATED LINKS

