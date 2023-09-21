### Example 1: List managed assets candidates for a group
```powershell
(Get-ZNGroupsManagedAssetsCandidate -GroupId g:a:cai6Wuyd -GroupType AD).Items
Domain     HasProtectionPolicy Id           Name
------     ------------------- --           ----
posh.local False               g:a:qu04AfTz Access Control Assistance Operators
posh.local False               g:a:XDRxcVDz Account Operators
posh.local False               g:a:MBAj0Xfx Administrators
posh.local False               g:a:u6xPbBLg Allowed RODC Password Replication Group
posh.local False               g:a:JjhBvgRW Backup Operators
posh.local False               g:a:j4oCHNuP Certificate Service DCOM Access
posh.local False               g:a:YeUXSDi6 Cert Publishers
posh.local                     a:a:8ErCHXe8 DC01
custom     False               g:c:Ie1pSYgt cgroup292300
custom     False               g:c:a3ULHEya cgroup33184
custom     False               g:c:loCbciM7 cgroup420354
                               a:l:Bn5E1jNy linux908049
                               a:l:mnVw2OZs ls01
                               a:t:u7QxbAUn ot193384
                               a:t:aCxJya46 switch01
                               a:t:YunW9uyd test
posh.local                     a:a:t8SZ1cp2 TS01
posh.local                     a:a:OtfLGUBq WC01
```

This cmdlet lists managed assets candidates for a group.
