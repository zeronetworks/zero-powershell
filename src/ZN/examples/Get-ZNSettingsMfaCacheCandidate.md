### Example 1: List MFA Cache candidates
```powershell
Get-ZNSettingsMfaCacheCandidate
```

```output
Id           Name                               Email                             Description DirectMembersCount Phone JobTitle LastLogon
--           ----                               -----                             ----------- ------------------ ----- -------- ---------
b:111001     Any user                                                                                                           
u:a:cDk6KLc8 albert Polo                        aestevez@paloaltonetworks.com                                                   
g:a:2mkAN4DS Domain Computers                                                                                                   
g:a:3AFg9RPE Backup Operators                                                                                                   
u:a:Q9tgABYw Guest (disabled)                                                                                                   
u:a:WfuzrUyt krbtgt (disabled)                                                                                                  
u:a:JnQxZS6j nicholas-ad                        nicholas+poshprd@zeronetworks.com                                               
g:a:3npP67jr Windows Authorization Access Group                                                                                 
g:a:3U1Z38mF Domain Admins                                                                                                      
g:a:7tzfiueO DnsAdmins                                                                                                          
g:a:81Tnx8va Pre-Windows 2000 Compatible Access
```

This cmdlet lists the MFA cache candidates.

### Example 2: {{ Add title here }}
```powershell
Get-ZNSettingsMfaCacheCandidate -Search Servers
```

```output
Id           Name                            Email Description DirectMembersCount Phone JobTitle LastLogon
--           ----                            ----- ----------- ------------------ ----- -------- ---------
g:a:DkSpCxPu RDS Endpoint Servers                                                                
g:a:npRV5X4F RDS Management Servers                                                              
g:a:AcuMXaSY RAS and IAS Servers                                                                 
g:a:wklutzfZ Terminal Server License Servers                                                     
g:a:W2iRFLTg RDS Remote Access Servers 
```

This cmdlet allows search for an MFA cache candidates.

