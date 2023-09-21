### Example 1: Get MFA methods for a MFA policy for a group
```powershell
$group = Get-ZNGroup -Search "Domain controllers" | where {$_.Domain -eq "tag"}
Get-ZNGroupsMfaOutboundPoliciesMfamethod -Groupid $group.id -GroupType tag        
2
4
5
1
```

This cmdlet returns possible MFA methods for a MFA policy for a group.
