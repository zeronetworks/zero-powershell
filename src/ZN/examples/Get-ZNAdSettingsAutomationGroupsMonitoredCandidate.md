### Example 1: Get AD Monitored Group Candidate
```powershell
( Get-ZNAdSettingsAutomationGroupsMonitoredCandidate -ForestId f:a:0bec706b).Items
```

```output
Domain     HasProtectionPolicy Id           Name
------     ------------------- --           ----
                               b:110003     All AD assets
posh.local False               g:a:qu04AfTz Access Control Assistance Operators
posh.local False               g:a:XDRxcVDz Account Operators
posh.local False               g:a:MBAj0Xfx Administrators
posh.local False               g:a:u6xPbBLg Allowed RODC Password Replication Group
posh.local False               g:a:JjhBvgRW Backup Operators
posh.local False               g:a:j4oCHNuP Certificate Service DCOM Access
posh.local False               g:a:YeUXSDi6 Cert Publishers
posh.local False               g:a:5uhxEQPp Cloneable Domain Controllers
posh.local False               g:a:lPQyszKw Cryptographic Operators
posh.local False               g:a:Ymj7i8np Denied RODC Password Replication Group
```

This cmdlet lists possible candidates for the AD setting for Monitored Group.
