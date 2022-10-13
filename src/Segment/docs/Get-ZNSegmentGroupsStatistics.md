---
external help file:
Module Name: ZN.Segment
online version: https://test.comzn.segment/get-znsegmentgroupsstatistics
schema: 2.0.0
---

# Get-ZNSegmentGroupsStatistics

## SYNOPSIS
Group statistics

## SYNTAX

```
Get-ZNSegmentGroupsStatistics [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
Group statistics

## EXAMPLES

### Example 1: Get group statistics
```powershell
Get-ZNSegmentGroupsStatistics
```

```output
GroupStatisticsAdGroupsCount GroupStatisticsCustomGroupsCount GroupStatisticsProtectionPoliciesCount
---------------------------- -------------------------------- --------------------------------------
                          50                                1                                      0
```

This cmdlet gets group statistics for the environment.

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

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IGroupsStatisticsGroupStatistics

## NOTES

ALIASES

## RELATED LINKS

