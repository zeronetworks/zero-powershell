---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/get-zngroupsstatistics
schema: 2.0.0
---

# Get-ZNGroupsStatistics

## SYNOPSIS
Returns an object with group statistics.

## SYNTAX

```
Get-ZNGroupsStatistics [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns an object with group statistics.

## EXAMPLES

### Example 1: Get group statistics
```powershell
Get-ZNGroupsStatistics
```

```output
roupStatisticsAdGroupsCount GroupStatisticsCustomGroupsCount GroupStatisticsProtectionPoliciesCount
---------------------------- -------------------------------- --------------------------------------
                          50                                1                                      0
```

This cmdlet gets group statistics for the environment.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IGroupsStatistics

## NOTES

## RELATED LINKS

