### Example 1: Get possible sources for inbound MFA Policy for a specific asset
```powershell
(Get-ZNAssetsMfaInboundPoliciesSourceCandidate -AssetId 'a:a:OtfLGUBq').Items
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
                               a:l:yFYDpnI5 Linux1004
```

This cmdlet will return possbile candidates for sources in an inbound MFA policy.

### Example 2: Search for a candidate
```powershell
(Get-ZNAssetsMfaInboundPoliciesSourceCandidate -AssetId 'a:a:OtfLGUBq' -Search Administrator).Items
```

```output
Domain     HasProtectionPolicy Id           Name
------     ------------------- --           ----
posh.local False               g:a:MBAj0Xfx Administrators
posh.local False               g:a:i01gT3az Hyper-V Administrators
posh.local False               g:a:oDcA2iHM Storage Replica Administrators```

To find a specific candidate use the search parameter with the Name to be searched.
