### Example 1: Get source user candidates for a MFA policy for a group
```powershell
$group = Get-ZNGroup -Search "Domain controllers" | where {$_.Domain -eq "tag"}
(Get-ZNGroupsMfaInboundPoliciesSourceUserCandidate -Groupid $group.id -GroupType tag).Items
```

```output
Domain     Id           Name
------     --           ----
           b:111001     Any user
posh.local g:a:qu04AfTz Access Control Assistance Operators
posh.local g:a:XDRxcVDz Account Operators
posh.local g:a:MBAj0Xfx Administrators
posh.local g:a:u6xPbBLg Allowed RODC Password Replication Group
posh.local g:a:JjhBvgRW Backup Operators
posh.local g:a:j4oCHNuP Certificate Service DCOM Access
posh.local g:a:YeUXSDi6 Cert Publishers
posh.local g:a:5uhxEQPp Cloneable Domain Controllers
posh.local g:a:lPQyszKw Cryptographic Operators
VPN        g:v:2IoMjM9F Default's excluded members group
posh.local u:a:IiObBkVQ krbtgt
posh.local u:a:w27loY5p nicholas
posh.local u:a:Tolw5kf6 test
posh.local u:a:RVVXGo4w zero
posh.local u:a:r6ZkL5Y0 Guest
posh.local u:a:V61t0gZB ZNRemoteManagement
posh.local u:a:X2inJbQY nicholasam
system     g:s:81445453 Zero Networks Admins
system     g:s:83445453 Zero Networks Operators
system     g:s:82445453 Zero Networks Viewers
```

This cmdlet returns possible source user candidates for a MFA policy for a group.
