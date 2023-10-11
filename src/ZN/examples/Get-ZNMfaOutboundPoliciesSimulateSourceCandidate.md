### Example 1: Get possible sources for outbound MFA Policy simulation
```powershell
(Get-ZNMfaOutboundPoliciesSimulateSourceCandidate).Items
Domain     HasProtectionPolicy Id           Name
------     ------------------- --           ----
posh.local                     a:a:8ErCHXe8 DC01
                               a:l:hC8rOTo0 Linux0
                               a:l:goXZ3fpT Linux1
                               a:l:FB8CBey8 Linux10
                               a:l:9CbKWeTW Linux100
                               a:l:ZVocc16n Linux1000
                               a:l:jhmIsjL9 Linux1001
                               a:l:8249TvxO Linux1002
                               a:l:aHMCQGN2 Linux1003
                               a:l:yFYDpnI5 Linux1004
```

This cmdlet will return possbile candidates for sources in an outbound MFA policy simulation.

### Example 2: Search for a candidate
```powershell
(Get-ZNMfaOutboundPoliciesSimulateSourceCandidate -Search DC01).Items
Domain     HasProtectionPolicy Id           Name
------     ------------------- --           ----
posh.local                     a:a:8ErCHXe8 DC01
```

To find a specific candidate use the search parameter with the Name to be searched.
