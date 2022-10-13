---
external help file:
Module Name: ZN.Segment
online version: https://test.comzn.segment/get-znsegmentrulesstatistics
schema: 2.0.0
---

# Get-ZNSegmentRulesStatistics

## SYNOPSIS
Get rules statistics

## SYNTAX

```
Get-ZNSegmentRulesStatistics [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
Get rules statistics

## EXAMPLES

### Example 1: List rules statistics
```powershell
 Get-ZNSegmentRulesStatistics
```

```output
AiStatisticsInboundAllowDisabledCount      : 0
AiStatisticsInboundAllowEnabledCount       : 2
AiStatisticsInboundBlockDisabledCount      : 0
AiStatisticsInboundBlockEnabledCount       : 1
AiStatisticsOutboundAllowDisabledCount     : 0
AiStatisticsOutboundAllowEnabledCount      : 1
AiStatisticsOutboundBlockDisabledCount     : 0
AiStatisticsOutboundBlockEnabledCount      : 1
MfaStatisticsInboundAllowDisabledCount     : 0
MfaStatisticsInboundAllowEnabledCount      : 0
MfaStatisticsInboundBlockDisabledCount     : 0
MfaStatisticsInboundBlockEnabledCount      : 0
MfaStatisticsOutboundAllowDisabledCount    : 0
MfaStatisticsOutboundAllowEnabledCount     : 0
MfaStatisticsOutboundBlockDisabledCount    : 0
MfaStatisticsOutboundBlockEnabledCount     : 0
PortalStatisticsInboundAllowDisabledCount  : 0
PortalStatisticsInboundAllowEnabledCount   : 0
PortalStatisticsInboundBlockDisabledCount  : 0
PortalStatisticsInboundBlockEnabledCount   : 0
PortalStatisticsOutboundAllowDisabledCount : 0
PortalStatisticsOutboundAllowEnabledCount  : 0
PortalStatisticsOutboundBlockDisabledCount : 0
PortalStatisticsOutboundBlockEnabledCount  : 0
SspStatisticsInboundAllowDisabledCount     : 0
SspStatisticsInboundAllowEnabledCount      : 0
SspStatisticsInboundBlockDisabledCount     : 0
SspStatisticsInboundBlockEnabledCount      : 0
SspStatisticsOutboundAllowDisabledCount    : 0
SspStatisticsOutboundAllowEnabledCount     : 0
SspStatisticsOutboundBlockDisabledCount    : 0
SspStatisticsOutboundBlockEnabledCount     : 0
```

This cmdlet lists the rules statistics for the environment.

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

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IRuleStatistics

## NOTES

ALIASES

## RELATED LINKS

