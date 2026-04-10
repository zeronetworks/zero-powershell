### Example 1: List Connect posture checks
```powershell
Get-ZNConnectPostureCheck
```

```output
Id                             MaxItems Name                       SingleValueOnly
--                             -------- ----                       ---------------
antivirus                               Antivirus                  True
diskEncrypted                           Disk Encryption            True
certificateExistsList                   Certificate exists         
fileExistsList                          File exists                
processRunningList                      Process is running         
domainJoined                            AD / Entra ID (Azure AD)   True
osVersionBuild                          OS version                 True
registryKeyValueDataExistsList          Registry value data exists
```

This cmdlet lists available posture checks for Connect.
