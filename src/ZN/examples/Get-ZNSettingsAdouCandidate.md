### Example 1: List candidates for AD OU configuration
```powershell
(Get-ZNSettingsAdouCandidate -Domain posh.local).Items
```

```output
Id           Name                                   Domain
--           ----                                   ------
g:u:f30cd874 OU=Domain Controllers,DC=posh,DC=local posh.local
g:u:72be985c OU=ZeroNetworks,DC=posh,DC=local       posh.local
```

This cmdlet lists candidates for AD OU configuration.
