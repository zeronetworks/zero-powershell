### Example 1: Get source candidates for an rpc rule for a specific group
```powershell
(Get-ZNGroupRpcRulesSourceCandidate -GroupType tag -GroupId 'g:t:01669ce2').Items
```

```output
Domain     HasProtectionPolicy Id           Name
------     ------------------- --           ----
                               b:110001     Any asset
posh.local False               g:a:rZl537o4 Access Control Assistance Operators
posh.local False               g:a:V9kshIRu Account Operators
posh.local False               g:a:Q4IYhlTC Administrators
posh.local False               g:a:OtwDATUK Allowed RODC Password Replication Group
posh.local False               g:a:3AFg9RPE Backup Operators
OT/IoT     False               g:o:0T669ce2 Biometric entry systems
OT/IoT     False               g:o:04669ce2 Cameras
OT/IoT     False               g:o:0A669ce2 Card readers
posh.local False               g:a:eSfiOaM0 Certificate Service DCOM Access
posh.local False               g:a:Qx5wSzxi Cert Publishers
                               a:n:3Odw9d40 as01
                               a:l:qFxq3oOt cs01
posh.local                     a:a:VWW2G2C8 dc01
                               a:l:4NMHdoaO linux0
                               a:l:18VODYZg linux1
                               a:l:9TlqfBhM linux_baseit
                               a:n:u5LRZxRq lm01
                               a:l:wEGYa0Cp ls01
                               a:t:gN2vxSX1 ot275354
                               a:t:CXGwcOOZ ot421163
```

This cmdlet gets the possible source candidates for a rpc rule for a specific group.
