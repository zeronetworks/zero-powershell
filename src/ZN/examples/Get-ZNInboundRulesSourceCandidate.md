### Example 1: List source candidates for inbound allow rule
```powershell
(Get-ZNInboundRulesSourceCandidate).Items
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
                               a:l:Bn5E1jNy linux908049
                               a:l:mnVw2OZs ls01
                               a:t:u7QxbAUn ot193384
                               a:t:aCxJya46 switch01
                               a:t:YunW9uyd test
posh.local                     a:a:t8SZ1cp2 TS01
posh.local                     a:a:OtfLGUBq WC01
```

This cmdlet lists the source candidates for an inbound rule.