### Example 1: Update Ansible setting
```powershell
Update-ZNAnsibleSetting -ClientId "clientId" -CredentialsName ssh -DisableCertificateValidation:$false -Password "password" -Url "https:1.2.3.4" -Username "ZNAccess"

```

This cmdlet updates the Ansible setting under Asset Management.
