### Example 1: Get Identity MFA Methods
```powershell
$group = (Get-ZNGroup -Search "Domain controllers").Items | where {$_.Domain -eq "tag"}Get-ZNGroupsMfaIdentityPoliciesMfamethod -Groupid $group.id -GroupType tag
```

```output
2
4
5
```

This cmdlet lists MFA methods for Identity MFA.
