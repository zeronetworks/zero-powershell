### Example 1: List source user candidates for an external access policy
```powershell
Get-ZNAssetExternalAccessPolicySourceUserCandidate -AssetId a:n:3Odw9d40
```

```output
Id           Name                                    Email                         Description DirectMembersCount Phone JobTitle LastLogon
--           ----                                    -----                         ----------- ------------------ ----- -------- ---------
b:111001     Any user                                                                                                            
g:a:rZl537o4 Access Control Assistance Operators                                                                                 
g:a:V9kshIRu Account Operators                                                                                                   
g:a:Q4IYhlTC Administrators                                                                                                      
u:a:cDk6KLc8 albert Polo                             aestevez@paloaltonetworks.com                                               
g:a:OtwDATUK Allowed RODC Password Replication Group                                                                             
g:a:3AFg9RPE Backup Operators                                                                                                    
g:a:eSfiOaM0 Certificate Service DCOM Access                                                                                     
g:a:Qx5wSzxi Cert Publishers                                                                                                     
g:a:leHDIXAw Cloneable Domain Controllers                                                                                        
g:a:jF0PdFzE Cryptographic Operators                                                                                             
g:s:81669ce2 Zero Networks Admins                                                                                                
g:s:83669ce2 Zero Networks Operators                                                                                             
g:s:82669ce2 Zero Networks Viewers 
```

This cmdlet lists source user candidates for an external access policy.
