### Example 1: Get candidates for monitoring control
```powershell
$forest = Get-ZNSettingsAd
(Get-ZNSettingsAdMonitoredCandidate -ForestId $forest.ForestId).Items

Domain     HasProtectionPolicy Id           Name
------     ------------------- --           ----
                               b:110003     All AD assets
                               g:s:03445453 Servers
                               g:s:04445453 Clients
posh.local False               g:a:qu04AfTz Access Control Assistance Operators
posh.local False               g:a:XDRxcVDz Account Operators
posh.local False               g:a:MBAj0Xfx Administrators
posh.local False               g:a:u6xPbBLg Allowed RODC Password Replication Group
posh.local False               g:a:JjhBvgRW Backup Operators
posh.local False               g:a:j4oCHNuP Certificate Service DCOM Access
posh.local False               g:a:YeUXSDi6 Cert Publishers
posh.local False               g:a:5uhxEQPp Cloneable Domain Controllers
posh.local False               g:a:lPQyszKw Cryptographic Operators
posh.local False               g:a:Ymj7i8np Denied RODC Password Replication Grou
```

This cmdlet lists possible candidates for monitoring control in Active Directory settings.
