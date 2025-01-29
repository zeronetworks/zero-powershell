### Example 1:  List Candidates for Windows AD monitoring
```powershell
(Get-ZNSettingsAdWindowsMonitoredCandidate -ForestId f:a:0bec706b).Items
```

```output
Id           Name                                    Domain
--           ----                                    ------
b:110003     All AD assets                           
g:s:03741a05 Servers                                 
g:s:04741a05 Clients                                 
g:a:SMNYUVPK Access Control Assistance Operators     posh.local
g:a:ygWshrUK Account Operators                       posh.local
g:a:vDSBhdKu Administrators                          posh.local
g:a:lCM1TULR Allowed RODC Password Replication Group posh.local
g:a:vRjsI4Re Backup Operators                        posh.local
g:a:Wuqi52A3 Certificate Service DCOM Access         posh.local
g:a:eHxbptyg Cert Publishers                         posh.local
g:a:YKAUh2xA Cloneable Domain Controllers            posh.local
g:a:Ei5iVw9f Cryptographic Operators                 posh.local
g:a:8GkAqqBj Denied RODC Password Replication Group  posh.local
```

This cmdlet lists possible candidates for the Windows AD monitoring control group.
