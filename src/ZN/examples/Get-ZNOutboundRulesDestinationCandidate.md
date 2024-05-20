### Example 1: Get possible destinations for outbound rule
```powershell
(Get-ZNOutboundRulesDestinationCandidate).Items
```

```output
AssetType Domain    Id           Name                                    ProtectionState
--------- ------    --           ----                                    ---------------
          zero.labs g:a:yu1gHyge Access Control Assistance Operators     
          zero.labs g:a:LXwCiIyG Account Operators                       
          zero.labs g:a:ukYAIg2J Administrators                          
          zero.labs g:a:zpYqGY8G Allowed RODC Password Replication Group 
          zero.labs g:a:GqUGqkiM Backup Operators                        
          zero.labs g:a:zobH4QmN Certificate Service DCOM Access         
          zero.labs g:a:v7HrWzxU Cert Publishers                         
          zero.labs g:a:Ddd1JHS6 Cloneable Domain Controllers            
          zero.labs g:a:vo645q5C Cryptographic Operators                 
2         zero.labs a:a:ZgBWOMyc DC1                                     10
          zero.labs g:a:mn0S6UED Denied RODC Password Replication Group  
2         zero.labs a:a:GnyWAsYs FS1                                     3
0                   a:l:YjoLaKRG linuxserver                             1
2         zero.labs a:a:EP2KKITZ TRUST1                                  3
1         zero.labs a:a:6BokfBbU WIN10-1                                 3
1         zero.labs a:a:HYZhxRzI WIN10-2                                 3
1         zero.labs a:a:qnRgyRA9 WIN10-3                                 3
1         zero.labs a:a:5wiknOhs WIN7                                    5
1         zero.labs a:a:cxIJepiA win8-1                                  3
```

This cmdlet will return possbile candidates for destinations in an outbound rule.

### Example 2: Search for a candidate
```powershell
(Get-ZNOutboundRulesDestinationCandidate -search DC1).Items
```

```output
AssetType Domain    Id           Name ProtectionState
--------- ------    --           ---- ---------------
2         zero.labs a:a:ZgBWOMyc DC1  5
```

To find a specific candidate use the search parameter with the Name to be searched.