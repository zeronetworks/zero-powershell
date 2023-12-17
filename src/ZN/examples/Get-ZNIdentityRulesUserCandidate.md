### Example 1: List user candidates for identity rules
```powershell
Get-ZNIdentityRulesUserCandidate

Id           Name                                    Email Description DirectMembersCount Phone JobTitle LastLogon
--           ----                                    ----- ----------- ------------------ ----- -------- ---------
g:a:qu04AfTz Access Control Assistance Operators                                                         
g:a:XDRxcVDz Account Operators                                                                           
g:a:MBAj0Xfx Administrators                                                                              
g:a:u6xPbBLg Allowed RODC Password Replication Group                                                     
g:a:JjhBvgRW Backup Operators                                                                            
g:a:j4oCHNuP Certificate Service DCOM Access                                                             
g:a:YeUXSDi6 Cert Publishers                                                                             
u:a:0jsjkic1 User14                                                                                      
u:a:ATiwG34z User30                                                                                      
u:a:4UydfhAS backups                                                                                     
g:c:XuE877Q5 cgroup229731                                                                                
g:c:xHNwXAUC cgroup32                                                                                    
g:c:gZryzkFa cgroup35                                                                                    
u:a:IiObBkVQ krbtgt                                                                                      
u:a:6ZWP4tbK User53                                                                                      
u:a:gOqRM6QW User21                                                                                      
u:a:DiXg7R5u User51                                                                                      
u:a:E1yQF2eJ User13                                                                                      
u:a:h9ePwNQg User69                                                                                      
u:a:hC3Ylccx User79 
```

This cmdlet lists the user candidates for identity rules.
