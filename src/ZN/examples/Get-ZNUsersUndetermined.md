### Example 1: List undetermind Users
```powershell
Get-ZNUsersUndetermined

Id           Name               Email                              Phone JobTitle
--           ----               -----                              ----- --------
u:a:IiObBkVQ krbtgt                                                      
u:a:w27loY5p nicholas           nicholas+posh@zeronetworks.com           
u:a:Tolw5kf6 test                                                        
u:a:RVVXGo4w zero               nicholas+poshzero@zeronetworks.com       
u:a:r6ZkL5Y0 Guest                                                       
u:a:V61t0gZB ZNRemoteManagement                                          
u:a:X2inJbQY nicholasam         nicholas+posham@zeronetworks.com   
```

Thsi cmdlet lists undetermined users.

### Example 2: Search for a undetermind user
```powershell
Get-ZNUsersUndetermined -Search nicholas

Id           Name       Email                              Phone JobTitle
--           ----       -----                              ----- --------
u:a:RVVXGo4w zero       nicholas+poshzero@zeronetworks.com       
u:a:w27loY5p nicholas   nicholas+posh@zeronetworks.com           
u:a:X2inJbQY nicholasam nicholas+posham@zeronetworks.com    
```

This cmdlet can also search for undetermined users.
