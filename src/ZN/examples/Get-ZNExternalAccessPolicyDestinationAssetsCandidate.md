### Example 1: List destination candidates for an external access policy
```powershell
Get-ZNExternalAccessPolicyDestinationAssetsCandidate
```

```output
Id           Fqdn Name                                    Description DirectMembersCount IPV4Addresses IPV6Addresses
--           ---- ----                                    ----------- ------------------ ------------- -----------
g:a:rZl537o4      Access Control Assistance Operators                                                             
g:a:V9kshIRu      Account Operators                                                                               
g:a:Q4IYhlTC      Administrators                                                                                  
g:a:OtwDATUK      Allowed RODC Password Replication Group                                                         
a:n:3Odw9d40      as01                                                                                            
g:a:3AFg9RPE      Backup Operators                                                                                
g:a:eSfiOaM0      Certificate Service DCOM Access                                                                 
g:a:Qx5wSzxi      Cert Publishers                                                                                 
g:a:leHDIXAw      Cloneable Domain Controllers                                                                    
g:s:30669ce2      Connect regions  
```

This cmdlet lists destination candidates for an external access policy.
