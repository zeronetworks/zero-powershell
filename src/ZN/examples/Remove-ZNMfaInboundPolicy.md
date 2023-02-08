### Example 1: Remove an inbound MFA Policy
```powershell
$policy = Get-ZNMfaInboundPolicy | where {$_.Description -eq "Test Policy"}
Remove-ZNMfaInboundPolicy -ReactivePolicyId $policy.Id
```

```output

```

This cmdlet deletes an inbound MFA policy from the environment.