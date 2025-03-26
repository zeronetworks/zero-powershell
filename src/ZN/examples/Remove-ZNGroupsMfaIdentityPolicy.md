


### Example 1: Delete identity MFA policy
```powershell
$group = (Get-ZNMfaIdentityPoliciesDestinationCandidate -Search "domain controllers").items | where {$_.Id -like "g:t:*"}
Remove-ZNGroupsMfaIdentityPolicy -GroupId $group.Id -GroupType tag -RuleId 724697fa-2db4-4330-b3f0-b157d2e23da3
```

```output

```

This cmdlet deletes an identity MFA policy.