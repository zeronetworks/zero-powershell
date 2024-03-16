---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-zngroupsrulesdistribution
schema: 2.0.0
---

# Get-ZNGroupsRulesDistribution

## SYNOPSIS
Returns an object with rules distribution.

## SYNTAX

```
Get-ZNGroupsRulesDistribution -GroupId <String> -GroupType <String> -RuleId <String> -RuleDirection <Int32>
 [<CommonParameters>]
```

## DESCRIPTION
Returns an object with rules distribution.

## EXAMPLES

### Example 1: List the rules distribution for a rule for an asset
```powershell
$group = Get-ZNGroup -Search "Domain controllers" | where {$_.Domain -eq "tag"}
Get-ZNGroupsRulesDistribution -GroupId $group.Id -GroupType tag -RuleId 6764bd86-f3c6-4949-a827-64e1499b1b86 -RuleDirection 1
```

```output
ActivitiesCount Timestamp
--------------- ---------
667             1692057600000
657             1692144000000
685             1692230400000
650             1692316800000
641             1692403200000
635             1692489600000
650             1692576000000
639             1692662400000
662             1692748800000
635             1692835200000
650             1692921600000
654             1693008000000
637             1693094400000
650             1693180800000
648             1693267200000
640             1693353600000
660             1693440000000
648             1693526400000
645             1693612800000
635             1693699200000
641             1693785600000
735             1693872000000
652             1693958400000
344             1694044800000
0               1694131200000
0               1694217600000
0               1694304000000
0               1694390400000
0               1694476800000
0               1694563200000
0               1694649600000
```

This cmdlet returns the rules distribution for a rule for an group.

## PARAMETERS

### -GroupId
groupId to filter on

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

### -GroupType
group type to filter on

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IRuleDistribution

## NOTES

## RELATED LINKS

