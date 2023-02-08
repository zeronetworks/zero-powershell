---
external help file:
Module Name: ZN.Api
online version: https://github.com/zn.api/get-znrulesstatistics
schema: 2.0.0
---

# Get-ZNRulesStatistics

## SYNOPSIS
Returns an object with rule statistics.

## SYNTAX

```
Get-ZNRulesStatistics [<CommonParameters>]
```

## DESCRIPTION
Returns an object with rule statistics.

## EXAMPLES

### Example 1: List rules statistics
```powershell
 Get-ZNRulesStatistics
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IRuleStatistics

## NOTES

ALIASES

## RELATED LINKS

