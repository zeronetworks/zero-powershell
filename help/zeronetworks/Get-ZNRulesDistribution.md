---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/get-znrulesdistribution
schema: 2.0.0
---

# Get-ZNRulesDistribution

## SYNOPSIS
Returns an object with rules distribution.

## SYNTAX

```
Get-ZNRulesDistribution -RuleId <String> -RuleDirection <Int32> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns an object with rules distribution.

## EXAMPLES

### Example 1: Get hit count for a rule
```powershell
Get-ZNRulesDistribution -RuleId 2f9fd777-d735-4cac-99c5-5f822318e510 -RuleDirection 1
```

```output
ActivitiesCount Timestamp
--------------- ---------
0               1673308800000                                                                                
0               1673395200000   
0               1673481600000
0               1673568000000
0               1673654400000
0               1673740800000
0               1673827200000
0               1673913600000
0               1674000000000
0               1674086400000
0               1674172800000
0               1674259200000
0               1674345600000
0               1674432000000
0               1674518400000
0               1674604800000
0               1674691200000
0               1674777600000
0               1674864000000
0               1674950400000
0               1675036800000
80              1675123200000
25              1675209600000
159             1675296000000
2               1675382400000
2               1675468800000
0               1675555200000
2               1675641600000
1               1675728000000
1               1675814400000
1               1675900800000
```

This cmdlet gets the hit count for a rule.
Rule direction is 1 for inbound rules and 2 for outbound rules.

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

