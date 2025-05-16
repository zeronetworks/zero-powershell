### Example 1: Delete an outbound rule
```powershell
$user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
Remove-ZNUserOutboundRule -UserId $user.Id -RuleId 5f461a39-7749-4f6d-b4a3-d87700a10b88
```

```output

```

This cmdlet deletes an outbound rule for a user.
