### Example 1: Get possible sources for AE outbound exclusion
```powershell
Get-ZNAeExclusionsOutboundUserCandidate
```

```output
Id           Name                                    Email Description DirectMembersCount Phone JobTitle
--           ----                                    ----- ----------- ------------------ ----- --------
g:a:SMNYUVPK Access Control Assistance Operators                                                
g:a:ygWshrUK Account Operators                                                                  
g:a:vDSBhdKu Administrators                                                                     
g:a:lCM1TULR Allowed RODC Password Replication Group                                            
g:a:vRjsI4Re Backup Operators                                                                   
g:a:Wuqi52A3 Certificate Service DCOM Access                                                    
g:a:eHxbptyg Cert Publishers                                                                    
g:a:YKAUh2xA Cloneable Domain Controllers                                                       
g:a:Ei5iVw9f Cryptographic Operators                                                            
g:a:8GkAqqBj Denied RODC Password Replication Group 
```

This cmdlet will return possbile candidates for destinations in an AE outbound exclusion.

### Example 2: Search for a candidate
```powershell
Get-ZNAeExclusionsOutboundUserCandidate -Search Administrators
```

```output
Id           Name                           Email Description DirectMembersCount Phone JobTitle
--           ----                           ----- ----------- ------------------ ----- --------
g:a:vDSBhdKu Administrators                                                            
g:a:0uVypaYA Hyper-V Administrators                                                    
g:a:x0lvXmyM Storage Replica Administrators 
```

To find a specific candidate use the search parameter with the Name to be searched.
