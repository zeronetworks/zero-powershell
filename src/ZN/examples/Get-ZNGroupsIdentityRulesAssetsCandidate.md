### Example 1: List asset candidates for identity rules
```powershell
Get-ZNGroupsIdentityRulesAssetsCandidate -GroupId g:t:01445453 -GroupType tag

Id           Fqdn Name                                    Description DirectMembersCount IPV4Addresses IPV6Addresses Sou
                                                                                                                     rce
--           ---- ----                                    ----------- ------------------ ------------- ------------- ---
b:110002          All segmented assets                                                                                  
b:110004          All segmented servers                                                                                 
b:110005          All segmented clients                                                                                 
g:a:qu04AfTz      Access Control Assistance Operators                                                                   
g:a:XDRxcVDz      Account Operators                                                                                     
g:a:MBAj0Xfx      Administrators                                                                                        
g:a:u6xPbBLg      Allowed RODC Password Replication Group                                                               
g:a:JjhBvgRW      Backup Operators                                                                                      
g:a:j4oCHNuP      Certificate Service DCOM Access                                                                       
g:a:YeUXSDi6      Cert Publishers                                                                                       
a:a:8ErCHXe8      DC01                                                                                                  
a:a:t8SZ1cp2      TS01                                                                                                  
a:a:OtfLGUBq      WC01                                                                                                  
g:c:XuE877Q5      cgroup229731                                                                                          
g:c:xHNwXAUC      cgroup32                                                                                              
g:c:gZryzkFa      cgroup35 
```

This cmdlet lists the asset candidates for identity rules.
