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
Get-ZNAssetsStatistics [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns an object with asset statistics.

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

This cmdlet lists the asset statistics for the environment.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetsStatistics

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS

