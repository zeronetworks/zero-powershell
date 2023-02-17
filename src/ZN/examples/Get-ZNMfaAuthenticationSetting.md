### Example 1: Get MFA Authentication Settings
```powershell
Get-ZNMfaAuthenticationSetting
```

```output
ItemIsRequiresAuth ItemIsSsoForceAuth ItemTokenTtl
------------------ ------------------ ------------
              True              False           60
```

This cmdlet gets the MFA Authentication settings under Protection.