### Example 1: Get possible destinations for outbound allow rule for a specific asset
```powershell
(Get-ZNAssetsOutboundAllowRulesDestinationCandidate -AssetId 'a:a:OtfLGUBq').Items
```

```output
Domain     HasProtectionPolicy Id           Name
------     ------------------- --           ----
                               b:110001     Any asset
posh.local False               g:a:qu04AfTz Access Control Assistance Operators
posh.local False               g:a:XDRxcVDz Account Operators
posh.local False               g:a:MBAj0Xfx Administrators
posh.local False               g:a:u6xPbBLg Allowed RODC Password Replication Group
posh.local False               g:a:JjhBvgRW Backup Operators
OT/IoT     False               g:o:0T445453 Biometric entry systems
OT/IoT     False               g:o:04445453 Cameras
OT/IoT     False               g:o:0A445453 Card readers
posh.local False               g:a:j4oCHNuP Certificate Service DCOM Access
posh.local False               g:a:YeUXSDi6 Cert Publishers
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

This cmdlet will return possbile candidates for destinations in an outbound allow rule.

### Example 2: Search for a candidate
```powershell
(Get-ZNAssetsOutboundAllowRulesDestinationCandidate -AssetId 'a:a:OtfLGUBq' -search DC01).Items
```

```output
Domain     HasProtectionPolicy Id           Name
------     ------------------- --           ----
posh.local                     a:a:8ErCHXe8 DC01
```

To find a specific candidate use the search parameter with the Name to be searched.
