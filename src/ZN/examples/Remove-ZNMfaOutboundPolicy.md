### Example 1: Remove an outbound MFA Policy
```powershell
$policy = Get-ZNMfaOutboundPolicy | where {$_.Description -eq "Test Policy"}
Remove-ZNMfaOutboundPolicy -ReactivePolicyId $policy.Id
```

```output

```

This cmdlet deletes an outbound MFA policy from the environment.