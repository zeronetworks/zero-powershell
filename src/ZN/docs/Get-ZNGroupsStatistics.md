---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-zngroupsstatistics
schema: 2.0.0
---

# Get-ZNGroupsStatistics

## SYNOPSIS
Returns an object with group statistics.

## SYNTAX

```
Get-ZNGroupsStatistics [<CommonParameters>]
```

## DESCRIPTION
Returns an object with group statistics.

## EXAMPLES

### Example 1: Get group statistics
```powershell
Get-ZNGroupsStatistics
GroupStatisticsAdGroupsCount GroupStatisticsCustomGroupsCount GroupStatisticsProtectionPoliciesCount
---------------------------- -------------------------------- --------------------------------------
                          50                                1                                      0
```

This cmdlet gets group statistics for the environment.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IGroupsStatisticsGroupStatistics

## NOTES

## RELATED LINKS

