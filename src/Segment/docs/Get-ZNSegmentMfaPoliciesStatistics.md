---
external help file:
Module Name: ZN.Segment
online version: https://github.com/zn.segment/get-znsegmentmfapoliciesstatistics
schema: 2.0.0
---

# Get-ZNSegmentMfaPoliciesStatistics

## SYNOPSIS
Get MFA statistics

## SYNTAX

```
Get-ZNSegmentMfaPoliciesStatistics [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
Get MFA statistics

## EXAMPLES

### Example 1: Get MFA policy statistics
```powershell
Get-ZNSegmentMfaPoliciesStatistics
```

```output
3
```

This cmdlet gets a total count of MFA polcies for the environment.

## PARAMETERS

### -PassThru
Returns true when the command succeeds

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IReactivePoliciesStatisticsReactivePoliciesStatistics

## NOTES

ALIASES

## RELATED LINKS

