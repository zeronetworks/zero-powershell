### Example 1: List possible MFA methods for an inbound MFA policy
```powershell
Get-ZNMfaInboundPoliciesMfamethod
```

```output
2
4
3
5
1
```

This cmdlet will return the possible MFA methods for an inbound MFA policy.

1 = SMS
2 = Email
3 = Duo Push
4 = Browser
5 = No MFA
