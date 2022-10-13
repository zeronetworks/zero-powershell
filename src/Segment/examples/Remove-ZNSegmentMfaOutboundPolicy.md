### Example 1: Remove an outbound MFA Policy
```powershell
$policy = Get-ZNSegmentMfaOutboundPolicy | where {$_.Description -eq "Test Policy"}
Remove-ZNSegmentMfaOutboundPolicy -ReactivePolicyId $policy.Id
```

```output

```

This cmdlet deletes an outbound MFA policy from the environment.