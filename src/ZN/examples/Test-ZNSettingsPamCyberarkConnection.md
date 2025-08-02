### Example 1: Test PAM CyberArk settings
```powershell
$pam = Get-ZNSettingsPamCyberark
Test-ZNSettingsPamCyberarkConnection -Address $pam.Address -Password "myPassword" -UserName $pam.UserName -SecretsType $pam.SecretsType -CyberArkLogonType $pam.CyberArkLogonType
```

```output
ErrMsg     Success
------     -------
Connected     True
```

This cmdlet tests the PAM CyberArk settings.
