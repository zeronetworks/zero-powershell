### Example 1: Update Ansible setting
```powershell
Update-ZNAnsibleSetting -ClientId "clientId" -CredentialsName ssh -DisableCertificateValidation:$false -Password "password" -Url "https:1.2.3.4" -Username "ZNAccess"
```

```output

```

This cmdlet updates the Ansible setting under Asset Management.

### Example 2: Update using existing settings
```powershell
$ansible = Get-ZNAnsibleSetting
Update-ZNAnsibleSetting -ClientId $ansible.ClientId -CredentialsName $ansible.CredentialsName -DisableCertificateValidation:$ansible.DisableCertificateValidation -Password "newpassword" -Url $ansible.Url -Username $ansible.Username -ClientSecret "clientSecret"
```

```output

```

Use exisitng settings to update settings.
