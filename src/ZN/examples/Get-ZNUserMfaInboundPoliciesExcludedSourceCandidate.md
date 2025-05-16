### Example 1: List excluded source candidates for a MFA policy
```powershell
$user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
(Get-ZNUserMfaInboundPoliciesExcludedSourceCandidate -UserId $user.id).Items
```

```output
Id           Name                                    Domain
--           ----                                    ------
g:a:5C0h1yd5 Access Control Assistance Operators     posh.local
g:a:HJWKrlHo Account Operators                       posh.local
g:a:HBWuhIUi Administrators                          posh.local
a:n:c9PBr848 al01                                    
g:a:9vY3VFbm Allowed RODC Password Replication Group posh.local
g:a:exFKiv8f Backup Operators                        posh.local
a:n:wO7YvV5m bdf027316245                            
a:n:1ixx7otO c365acdfdff3                            
g:a:MXf0RYFl Certificate Service DCOM Access         posh.local
g:a:yqC1KYpY Cert Publishers                         posh.local
```

This cmdlet lists excluded source candidates for an MFA policy.
