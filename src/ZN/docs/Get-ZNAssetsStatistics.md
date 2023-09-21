---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znassetsstatistics
schema: 2.0.0
---

# Get-ZNAssetsStatistics

## SYNOPSIS
Returns an object with asset statistics.

## SYNTAX

```
Get-ZNAssetsStatistics [<CommonParameters>]
```

## DESCRIPTION
Returns an object with asset statistics.

## EXAMPLES

### Example 1: List asset statistics
```powershell
Get-ZNAssetsStatistics
ItemAddingProtectionCount               : 
ItemDeletedCount                        : 0
ItemForceAddingProtectionCount          : 
ItemForceRemovingProtectionCount        : 
ItemForcedUnprotectedCount              : 
ItemMonitoredCount                      : 8
ItemNotProtectedLink                    : {protectionStatus, status}
ItemProtectedCount                      : 
ItemProtectedDueToProtectionPolicyCount : 
ItemQueuedCount                         : 
ItemQueuedDueToProtectionPolicyCount    : 
ItemRemovingProtectionCount             : 
ItemTotalCount                          : 12
```

This cmdlet lists the asset statistics for the environment.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetsStatisticsItem

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

## RELATED LINKS

