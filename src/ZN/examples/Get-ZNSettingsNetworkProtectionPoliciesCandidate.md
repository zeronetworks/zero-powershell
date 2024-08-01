### Example 1: List candidates for Network segmentation policies
```powershell
(Get-ZNSettingsNetworkProtectionPoliciesCandidate).Items
```

```output
Domain     HasProtectionPolicy Id           Name
------     ------------------- --           ----
posh.local                     g:a:2mkAN4DS Domain Computers
posh.local                     g:a:3AFg9RPE Backup Operators
posh.local                     g:a:3npP67jr Windows Authorization Access Group
posh.local                     g:a:3U1Z38mF Domain Admins
posh.local                     g:a:7tzfiueO DnsAdmins
posh.local                     g:a:81Tnx8va Pre-Windows 2000 Compatible Access
posh.local                     g:a:8ajEi4UV Domain Guests
posh.local                     g:a:AcuMXaSY RAS and IAS Servers
posh.local                     g:a:ApakNovN Domain Controllers
posh.local                     g:a:BaWTMSoa Guests
```

This cmdlet lists candidates for Network segmentation policies.
