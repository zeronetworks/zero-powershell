### Example 1: Delete an outbound MFA policy
```powershell
$user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
Remove-ZNUserMfaOutboundPolicy -UserId $user.Id -ReactivePolicyId 905cf7cd-f616-4699-93a9-420df0db52b2
```

```output

```

This cmdlet deletes an outbound MFA poliy.
