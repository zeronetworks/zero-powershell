### Example 1: Get the Ansible user settings
```powershell
Get-ZNAnsibleSetting
```

```output
ClientId CredentialsName DisableCertificateValidation Url             Username
-------- --------------- ---------------------------- ---             --------
1234     ssh             True                         https://1.1.1.1 znAdmin
```

This cmdlet gets the Linux Ansible User settings under Asset Management.
