### Example 1: List group candidates for overriding onboarding policy
```powershell
(Get-ZNIdentityOverridingOnboardingPoliciesGroupCandidate).Items
```

```output
Id           Name                                    Domain
--           ----                                    ------
g:a:SMNYUVPK Access Control Assistance Operators     posh.local
g:a:ygWshrUK Account Operators                       posh.local
g:a:vDSBhdKu Administrators                          posh.local
g:a:lCM1TULR Allowed RODC Password Replication Group posh.local
g:s:28741a05 Any except trusted Internet             system
g:a:vRjsI4Re Backup Operators                        posh.local
g:a:Wuqi52A3 Certificate Service DCOM Access         posh.local
g:a:eHxbptyg Cert Publishers                         posh.local
g:s:04741a05 Clients                                 system
g:a:YKAUh2xA Cloneable Domain Controllers            posh.local
```

This cmdlet lists group candidates for overriding onboarding policy.

### Example 2: Search for a candidate
```powershell
(Get-ZNIdentityOverridingOnboardingPoliciesGroupCandidate -Search clients).Items
```

```output
Id           Name                      Domain
--           ----                      ------
g:s:04741a05 Clients                   system
g:t:5U741a05 Externally facing clients tag
```

This cmdlet can search for a group using the search parameter.
