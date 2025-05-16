### Example 1: List source user candidates for a MFA policy
```powershell
$user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
(Get-ZNUserMfaInboundPoliciesSourceUserCandidate -UserId $user.id).Items
```

```output
Id           Name                                    Domain
--           ----                                    ------
b:111001     Any user                                
g:a:5C0h1yd5 Access Control Assistance Operators     posh.local
g:a:HJWKrlHo Account Operators                       posh.local
u:d:OyGBmU7E AdminAAD                                Entra ID (Azure AD)
g:a:HBWuhIUi Administrators                          posh.local
g:a:9vY3VFbm Allowed RODC Password Replication Group posh.local
g:a:exFKiv8f Backup Operators                        posh.local
g:a:MXf0RYFl Certificate Service DCOM Access         posh.local
g:a:yqC1KYpY Cert Publishers                         posh.local
g:a:4SxDUPd8 Cloneable Domain Controllers            posh.local
g:a:GFjfKrnr Cryptographic Operators                 posh.local
g:s:81da83cd Zero Networks Admins                    system
g:s:83da83cd Zero Networks Operators                 system
g:s:82da83cd Zero Networks Viewers                   system
```

This cmdlet lists source user candidates for an MFA policy.
