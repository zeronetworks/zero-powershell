### Example 1: Update PAM CyberArk settings
```powershell
$pam = get-ZNSettingsPamCyberark 
Update-ZNSettingsPamCyberark -Address $pam.Address -CyberArkLogonType $pam.CyberArkLogonType -Password "newpassword" -SecretsType $pam.SecretsType -UserName $pam.UserName
```

```output

```

This cmdlet updates PAM CyberArk settings.
