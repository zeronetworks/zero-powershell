### Example 1: Delete identity rule
```powershell
$user = Search-ZNUser -PrincipalName 'posh\zero'
Remove-ZNUserIdentityRule -UserId $user -RuleId 724697fa-2db4-4330-b3f0-b157d2e23da3

```

This cmdlet deletes an identity rule.