### Example 1: Delete intbound MFA policy
```powershell
 $group = Get-ZNGroup -Search "Domain controllers" | where {$_.Id -like "g:t:*"}
 Remove-ZNGroupsMfaInboundPolicy -GroupId $group.id -GroupType tag -ReactivePolicyId 32951fee-7f70-4974-b90d-c50182bbdeb3
```

```output

```

This cmdlet deletes an outbound MFA policy.