### Example 1: List asset manager candidates for a group
```powershell
(Get-ZNGroupsAssetManagersCandidate -Groupid g:t:01445453 -GroupType tag).Items
Domain     HasProtectionPolicy Id           Name
------     ------------------- --           ----
posh.local False               g:a:qu04AfTz Access Control Assistance Operators
posh.local False               g:a:XDRxcVDz Account Operators
posh.local False               g:a:MBAj0Xfx Administrators
posh.local False               g:a:u6xPbBLg Allowed RODC Password Replication Group
posh.local False               g:a:JjhBvgRW Backup Operators
posh.local False               g:a:j4oCHNuP Certificate Service DCOM Access
posh.local False               g:a:YeUXSDi6 Cert Publishers
posh.local                     u:a:r6ZkL5Y0 Guest
custom     False               g:c:a3ULHEya cgroup33184
custom     False               g:c:loCbciM7 cgroup420354
custom     False               g:c:dhbMSNxu cgroup565306
posh.local                     u:a:IiObBkVQ krbtgt
posh.local                     u:a:Tolw5kf6 test
posh.local                     u:a:RVVXGo4w zero
posh.local                     u:a:V61t0gZB ZNRemoteManagement
```

This cmdlet lists asset manager candidates for a group.
