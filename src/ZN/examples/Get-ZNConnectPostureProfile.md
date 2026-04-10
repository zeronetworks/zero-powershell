### Example 1: List Connect posture profiles
```powershell
(Get-ZNConnectPostureProfile).Items
```

```output
Action                                    : BLOCK
CheckIntervalSeconds                      : 900
CreatedAt                                 : 1774466773414
CreatedById                               : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName                             : Zero Networks
Description                               : 
Id                                        : P:a:CDknSSQc
MacCheckCertificateExistsList             : 
MacCheckDomainJoinedList                  : 
MacCheckFileExistsList                    : 
MacCheckProcessRunningList                : 
MacChecksAntivirusIsEnabled               : 
MacChecksDiskEncryptedIsEncrypted         : 
MacChecksOsVersionBuildOSVersionsList     : 
Name                                      : test
RoleIds                                   : {}
UpdatedAt                                 : 1774466773414
UpdatedById                               : 
UpdatedByName                             : 
WindowCheckCertificateExistsList          : {}
WindowCheckDomainJoinedList               : 
WindowCheckFileExistsList                 : {}
WindowCheckProcessRunningList             : {}
WindowCheckRegistryKeyValueDataExistsList : {}
WindowsChecksAntivirusIsEnabled           : True
WindowsChecksDiskEncryptedIsEncrypted     : 
WindowsChecksOsVersionBuildOSVersionsList :
```

This cmdlet lists Connect posture profiles.
