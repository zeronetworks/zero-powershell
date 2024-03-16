### Example 1: List excluded asset candidates for user access configs
```powershell
Get-ZNSettingsConnectUserAccessConfigExcludedAssetsCandidate
```

```output
Id           Fqdn Name                                      Description DirectMembersCount IPV4Addresses IPV6Addresses S
                                                                                                                       o
                                                                                                                       u
                                                                                                                       r
                                                                                                                       c
                                                                                                                       e
--           ---- ----                                      ----------- ------------------ ------------- ------------- -
g:a:qu04AfTz      Access Control Assistance Operators                                                                   
g:a:XDRxcVDz      Account Operators                                                                                     
g:a:MBAj0Xfx      Administrators                                                                                        
g:a:u6xPbBLg      Allowed RODC Password Replication Group                                                               
g:s:18445453      Any asset except segmented OT/IoT devices                                                             
g:s:28445453      Any except trusted Internet                                                                           
g:a:JjhBvgRW      Backup Operators                                                                                      
a:l:aayoPnNJ      CS01                                                                                                  
g:a:j4oCHNuP      Certificate Service DCOM Access                                                                       
g:a:YeUXSDi6      Cert Publishers                                                                                       
a:a:8ErCHXe8      DC01                                                                                                  
a:l:hC8rOTo0      Linux0                                                                                                
a:l:goXZ3fpT      Linux1                                                                                                
a:l:FB8CBey8      Linux10                                                                                               
a:l:9CbKWeTW      Linux100                                                                                              
a:l:ZVocc16n      Linux1000                                                                                             
a:l:jhmIsjL9      Linux1001                                                                                             
a:l:8249TvxO      Linux1002                                                                                             
a:l:aHMCQGN2      Linux1003                                                                                             
g:c:XuE877Q5      cgroup229731 
```

This cmdlet lists the asset candidates for User Access Configs.
