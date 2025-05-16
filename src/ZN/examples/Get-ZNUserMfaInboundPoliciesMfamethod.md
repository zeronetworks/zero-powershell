### Example 1: List MFA methods for a MFA policy
```powershell
$user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
Get-ZNUserMfaInboundPoliciesMfamethod -UserId $user.id
```

```output
5
2
4
```

This cmdlet lists MFA methods for an MFA policy.
