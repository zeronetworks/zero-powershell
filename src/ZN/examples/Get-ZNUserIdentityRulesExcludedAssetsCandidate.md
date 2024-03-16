### Example 1: List excluded asset candidates for identity rule
```powershell
Get-ZNUserIdentityRulesExcludedAssetsCandidate -UserId u:a:4UydfhAS
```

```output
Id           Fqdn Name                                    Description DirectMembersCount IPV4Addresses IPV6Addresses Source AssetStatus ProtectionStat
                                                                                                                                        e
--           ---- ----                                    ----------- ------------------ ------------- ------------- ------ ----------- --------------
g:a:qu04AfTz      Access Control Assistance Operators                                                                                   
g:a:XDRxcVDz      Account Operators                                                                                                     
g:a:MBAj0Xfx      Administrators                                                                                                        
g:a:u6xPbBLg      Allowed RODC Password Replication Group                                                                               
g:a:JjhBvgRW      Backup Operators                                                                                                      
g:a:j4oCHNuP      Certificate Service DCOM Access                                                                                       
g:a:YeUXSDi6      Cert Publishers                                                                                                       
a:a:8ErCHXe8      DC01                                                                                                                  1
a:a:t8SZ1cp2      TS01                                                                                                                  3
a:a:OtfLGUBq      WC01                                                                                                                  1
g:c:XuE877Q5      cgroup229731                                                                                                          
g:c:xHNwXAUC      cgroup32                                                                                                              
g:c:gZryzkFa      cgroup35   
```

This cmdlet lists excluded asset candidates for identity rules for a specific user.
