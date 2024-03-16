### Example 1: Get user candidates for an rpc rule for a specific group
```powershell
Get-ZNGroupsRpcRulesUserCandidate -GroupType tag -GroupId 'g:t:01669ce2'        
```

```output
Id           Name                                    Email                             Description DirectMembersCount Phone JobTitl
                                                                                                                            e
--           ----                                    -----                             ----------- ------------------ ----- -------
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
u:a:Tlx1mxp6 zUser1                                                                                                                
u:a:Hk7V9Fp7 zSvcAcct3                                                                                                             
u:a:hCHogv8X zSvcAcct8                                                                                                             
u:a:chEzqYOy zUser3                                                                                                                
u:a:AQPEZKgV zUser5                                                                                                                
u:a:p4xO35Li zUser10                                                                                                               
u:a:lAT1XUpz zSvcAcct9                                                                                                             
u:a:WfuzrUyt krbtgt                                                                                                                
u:a:JnQxZS6j nicholas-ad                             nicholas+poshprd@zeronetworks.com      
```

This cmdlet gets the possible user candidates for a rpc rule for a specific group.
