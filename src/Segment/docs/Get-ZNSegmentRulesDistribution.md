---
external help file:
Module Name: ZN.Segment
online version: https://test.comzn.segment/get-znsegmentrulesdistribution
schema: 2.0.0
---

# Get-ZNSegmentRulesDistribution

## SYNOPSIS
Get distribution of rule hit count

## SYNTAX

```
Get-ZNSegmentRulesDistribution -RuleId <String> -RuleDirection <Int32> [<CommonParameters>]
```

## DESCRIPTION
Get distribution of rule hit count

## EXAMPLES

### Example 1: {{ Add title here }}
```powershell
{{ Add code here }}
```

```output
{{ Add output here }}
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
{{ Add code here }}
```

```output
{{ Add output here }}
```

{{ Add description here }}

## PARAMETERS

### -RuleDirection
direction of the rule (1-Inbound, 2-Outbound)

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RuleId
The id of the rule

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

### System.String

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAuthError

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IDistribution

## NOTES

ALIASES

## RELATED LINKS

