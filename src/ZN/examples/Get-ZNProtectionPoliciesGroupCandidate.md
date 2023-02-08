### Example 1: List candidates for protection policies
```powershell
Get-ZNProtectionPoliciesGroupCandidate).Items
```

```output
(Get-ZNProtectionPoliciesGroupCandidate).Items

Domain    HasProtectionPolicy Id           Name
------    ------------------- --           ----
zero.labs False               g:a:yu1gHyge Access Control Assistance Operators
zero.labs False               g:a:LXwCiIyG Account Operators
tag       False               g:t:32276c2c Acronis backup
zero.labs False               g:a:ukYAIg2J Administrators
zero.labs False               g:a:zpYqGY8G Allowed RODC Password Replication Group
tag       False               g:t:10276c2c Asset management
zero.labs False               g:a:GqUGqkiM Backup Operators
tag       False               g:t:23276c2c Backup servers
tag       False               g:t:37276c2c Certificate Authority
zero.labs False               g:a:zobH4QmN Certificate Service DCOM Access
```

The cmdlet gets candidates for protection policies for the environment

### Example 2: Search for a candidate
```powershell
(Get-ZNProtectionPoliciesGroupCandidate -Search Clients).Items
```

```output
Domain HasProtectionPolicy Id           Name
------ ------------------- --           ----
system False               g:s:04276c2c Clients
```

To find a specific candidate use the search parameter with the Name to be searched.

