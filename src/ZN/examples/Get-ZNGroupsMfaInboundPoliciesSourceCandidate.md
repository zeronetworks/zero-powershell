### Example 1: Get source candidates for a MFA policy for a group
```powershell
$group = Get-ZNGroup -Search "Domain controllers" | where {$_.Domain -eq "tag"}
(Get-ZNGroupsMfaInboundPoliciesSourceCandidate -Groupid $group.id -GroupType tag).Items        
```

```output
Domain     HasProtectionPolicy Id           Name
------     ------------------- --           ----
                               b:110001     Any asset
                               b:110006     Unmonitored assets
posh.local False               g:a:qu04AfTz Access Control Assistance Operators
posh.local False               g:a:XDRxcVDz Account Operators
posh.local False               g:a:MBAj0Xfx Administrators
posh.local False               g:a:u6xPbBLg Allowed RODC Password Replication Group
posh.local False               g:a:JjhBvgRW Backup Operators
                               a:l:aayoPnNJ CS01
posh.local False               g:a:j4oCHNuP Certificate Service DCOM Access
posh.local False               g:a:YeUXSDi6 Cert Publishers
system     False               g:s:04445453 Clients
posh.local False               g:a:5uhxEQPp Cloneable Domain Controllers
posh.local False               g:a:lPQyszKw Cryptographic Operators
posh.local                     a:a:8ErCHXe8 DC01
                               a:l:hC8rOTo0 Linux0
                               a:l:goXZ3fpT Linux1
                               a:l:FB8CBey8 Linux10
                               a:l:9CbKWeTW Linux100
                               a:l:ZVocc16n Linux1000
                               a:l:jhmIsjL9 Linux1001
                               a:l:8249TvxO Linux1002
                               a:l:aHMCQGN2 Linux1003
```

This cmdlet returns possible source candidates for a MFA policy for a group.
