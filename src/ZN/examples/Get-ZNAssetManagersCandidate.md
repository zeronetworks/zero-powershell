### Example 1: Get asset manager candidates for an asset
```powershell
$asset = Search-ZNAsset -Fqdn dc01.posh.local
(Get-ZNAssetManagersCandidate -AssetId $asset).Items

Domain     HasProtectionPolicy Id           Name
------     ------------------- --           ----
posh.local False               g:a:qu04AfTz Access Control Assistance Operators
posh.local False               g:a:XDRxcVDz Account Operators
posh.local False               g:a:MBAj0Xfx Administrators
posh.local False               g:a:u6xPbBLg Allowed RODC Password Replication Group
posh.local False               g:a:JjhBvgRW Backup Operators
posh.local False               g:a:j4oCHNuP Certificate Service DCOM Access
posh.local False               g:a:YeUXSDi6 Cert Publishers
posh.local False               g:a:5uhxEQPp Cloneable Domain Controllers
posh.local False               g:a:lPQyszKw Cryptographic Operators
VPN        False               g:v:2IoMjM9F Default's excluded members group
posh.local                     u:a:IiObBkVQ krbtgt
posh.local                     u:a:w27loY5p nicholas
posh.local                     u:a:Tolw5kf6 test
posh.local                     u:a:RVVXGo4w zero
posh.local                     u:a:r6ZkL5Y0 Guest
posh.local                     u:a:V61t0gZB ZNRemoteManagement
```

This cmdlet lists asset manager candidates for an asset.

