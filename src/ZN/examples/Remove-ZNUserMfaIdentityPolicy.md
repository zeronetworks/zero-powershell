### Example 1: Delete identity MFA policy
```powershell
$user = (Get-ZNMfaIdentityPoliciesSourceUserCandidate -Search "zero").items | where {$_.Name -eq "zero"}  
Remove-ZNUserMfaIdentityPolicy -UserId $user.Id -RuleId 724697fa-2db4-4330-b3f0-b157d2e23da3
```

```output

```

This cmdlet deletes an identity MFA policy.