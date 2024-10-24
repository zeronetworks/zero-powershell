### Example 1: List candidates for identity onboarding policies
```powershell
(Get-ZNIdentityOnboardingPoliciesGroupCandidate).Items
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

This cmdlet lists candidates for identity onboarding policies.

### Example 2: Search for a candidate for identity onboarding policies
```powershell
(Get-ZNIdentityOnboardingPoliciesGroupCandidate -Search Servers).Items
```

```output
Domain     HasProtectionPolicy Id           Name
------     ------------------- --           ----
posh.local                     g:a:AcuMXaSY RAS and IAS Servers
posh.local                     g:a:DkSpCxPu RDS Endpoint Servers
posh.local                     g:a:npRV5X4F RDS Management Servers
posh.local                     g:a:W2iRFLTg RDS Remote Access Servers
posh.local                     g:a:wklutzfZ Terminal Server License Servers
system                         g:s:01669ce2 Segment servers
system                         g:s:03669ce2 Servers
tag                            g:t:5V669ce2 Externally facing servers
```

This cmdlet also allows searching for a group name.

