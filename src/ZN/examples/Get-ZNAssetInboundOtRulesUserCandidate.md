### Example 1: List user candidate for OT inbound rule
```powershell
Get-ZNAssetInboundOtRulesUserCandidate -AssetId $asset
```

```output
Id           Name                                    Email                             Description DirectMembersCount Phone JobTitle
--           ----                                    -----                             ----------- ------------------ ----- --------
g:a:5C0h1yd5 Access Control Assistance Operators                                                                            
g:a:HJWKrlHo Account Operators                                                                                              
u:d:OyGBmU7E AdminAAD                                zeroaad@znposhstg.onmicrosoft.com                                      
g:a:HBWuhIUi Administrators                                                                                                 
g:a:9vY3VFbm Allowed RODC Password Replication Group                                                                        
g:a:exFKiv8f Backup Operators                                                                                               
g:a:MXf0RYFl Certificate Service DCOM Access                                                                                
g:a:yqC1KYpY Cert Publishers                                                                                                
g:a:4SxDUPd8 Cloneable Domain Controllers                                                                                   
g:a:GFjfKrnr Cryptographic Operators 
```

This cmdlet lists user candidates for an OT inbound rule.
