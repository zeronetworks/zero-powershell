### Example 1: Update MFA Authentication setting
```powershell
$mfa = Get-ZNMfaAuthenticationSetting
Update-ZNMfaAuthenticationSetting -IsRequiresAuth:$mfa.ItemIsRequiresAuth -IsSsoForceAuth:$mfa.ItemIsSsoForceAuth -TokenTtl 120

```

This cmdlet updates the MFA Authentication setting.
