---
external help file:
Module Name: ZN.Api
online version: https://github.com/zn.api/get-znassetsstatesstatistics
schema: 2.0.0
---

# Get-ZNAssetsStatesStatistics

## SYNOPSIS
Returns an object with asset state statistics.

## SYNTAX

```
Get-ZNAssetsStatesStatistics [<CommonParameters>]
```

## DESCRIPTION
Returns an object with asset state statistics.

## EXAMPLES

### Example 1: List asset statistics
```powershell
Get-ZNAssetsStatistics 
```

```output
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

This cmdlet lists the asset statstics for the environment.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetsStatesStatisticsReactivePoliciesStatistics

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

## RELATED LINKS

