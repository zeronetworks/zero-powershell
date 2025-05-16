### Example 1: Delete an inbound MFA policy
```powershell
$user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
Remove-ZNUserMfaInboundPolicy -UserId $user.Id -ReactivePolicyId f459e8b0-f7f8-4157-8989-afee1cac7735
```

```output

```

This cmdlet deletes an inbound MFA poliy.
