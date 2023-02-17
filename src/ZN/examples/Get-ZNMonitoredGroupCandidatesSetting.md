### Example 1: Get possible candidates for Asset Monitoring Control
```powershell
(Get-ZNMonitoredGroupCandidatesSetting).Items
```

```output
omain    HasProtectionPolicy Id           Name
------    ------------------- --           ----
                              b:110003     All AD assets
zero.labs False               g:a:yu1gHyge Access Control Assistance Operators
zero.labs False               g:a:LXwCiIyG Account Operators
zero.labs False               g:a:ukYAIg2J Administrators
zero.labs False               g:a:zpYqGY8G Allowed RODC Password Replication Group
zero.labs False               g:a:GqUGqkiM Backup Operators
zero.labs False               g:a:zobH4QmN Certificate Service DCOM Access
zero.labs False               g:a:v7HrWzxU Cert Publishers
zero.labs False               g:a:Ddd1JHS6 Cloneable Domain Controllers
zero.labs False               g:a:vo645q5C Cryptographic Operators
zero.labs False               g:a:mn0S6UED Denied RODC Password Replication Group
```

This cmdlet will return possbile candidates for Asset Monitoring control.

### Example 2: Search for a candidate
```powershell
(Get-ZNMonitoredGroupCandidatesSetting -Search "All AD Assets").Items
```

```output
Domain HasProtectionPolicy Id       Name
------ ------------------- --       ----
                           b:110003 All AD assets
```

To find a specific candidate use the search parameter with the Name to be searched.
