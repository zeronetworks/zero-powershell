### Example 1: List the rules distribution for a rule for an asset
```powershell
$group = Get-ZNGroup -Search "Domain controllers" | where {$_.Domain -eq "tag"}
Get-ZNGroupsRulesDistribution -GroupId $group.Id -GroupType tag -RuleId 6764bd86-f3c6-4949-a827-64e1499b1b86 -RuleDirection 1

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
