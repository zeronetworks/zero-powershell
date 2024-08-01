### Example 1: List candidates for MFA Cache policies
```powershell
Get-ZNSettingsMfaCacheCandidate 
```

```output
Id           Name                                    Email Description DirectMembersCount Phone JobTitle LastLogon
--           ----                                    ----- ----------- ------------------ ----- -------- ---------
b:111001     Any user                                                                                    
g:a:rZl537o4 Access Control Assistance Operators                                                         
g:a:V9kshIRu Account Operators                                                                           
g:a:Q4IYhlTC Administrators                                                                              
g:a:OtwDATUK Allowed RODC Password Replication Group                                                     
g:a:3AFg9RPE Backup Operators                                                                            
g:a:eSfiOaM0 Certificate Service DCOM Access                                                             
g:a:Qx5wSzxi Cert Publishers                                                                             
g:a:leHDIXAw Cloneable Domain Controllers                                                                
g:a:jF0PdFzE Cryptographic Operators                                                                     
g:a:PHBjR5mL Denied RODC Password Replication Group 
```

This cmdlet lists candidates for MFA cache policies.
