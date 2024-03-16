### Example 1: Get possible destinations for inbound MFA Policy Simulation
```powershell
(Get-ZNMfaInboundPoliciesSimulateDestinationCandidate).Items
```

```output
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

This cmdlet will return possbile candidates for destinations in an inbound MFA policy simulation.


### Example 2: Search for a candidate
```powershell
(Get-ZNMfaInboundPoliciesSimulateDestinationCandidate -Search DC01).Items
```

```output
Domain     HasProtectionPolicy Id           Name
------     ------------------- --           ----
posh.local                     a:a:8ErCHXe8 DC01
```

To find a specific candidate use the search parameter with the Name to be searched.
