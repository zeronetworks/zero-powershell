### Example 1: Delete outbound MFA policy
```powershell
 $group = Get-ZNGroup -Search "Domain controllers" | where {$_.Id -like "g:t:*"}
 Remove-ZNGroupsMfaOutboundPolicy -GroupId $group.id -GroupType tag -ReactivePolicyId 32951fee-7f70-4974-b90d-c50182bbdeb3

```

This cmdlet deletes an outbound MFA policy.