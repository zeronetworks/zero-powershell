---
external help file:
Module Name: ZN.Segment
online version: https://github.com/zn.segment/get-znsegmentassetsstatesstatistics
schema: 2.0.0
---

# Get-ZNSegmentAssetsStatesStatistics

## SYNOPSIS
AssetsStatesStatistics_Get

## SYNTAX

```
Get-ZNSegmentAssetsStatesStatistics [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
AssetsStatesStatistics_Get

## EXAMPLES

### Example 1: List asset statistics
```powershell
Get-ZNSegmentAssetsStatistics 
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

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAssetsStatesStatisticsReactivePoliciesStatistics

## NOTES

ALIASES

## RELATED LINKS

