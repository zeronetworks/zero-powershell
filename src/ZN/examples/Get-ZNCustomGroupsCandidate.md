### Example 1: List custom group candidates
```powershell
Get-ZNCustomGroupsCandidate
Id           Name                                      Description DirectMembersCount
--           ----                                      ----------- ------------------
g:a:qu04AfTz Access Control Assistance Operators                   
g:a:XDRxcVDz Account Operators                                     
g:a:MBAj0Xfx Administrators                                        
g:a:u6xPbBLg Allowed RODC Password Replication Group               
g:s:18445453 Any asset except protected OT/IoT devices             
g:a:JjhBvgRW Backup Operators                                      
g:o:0T445453 Biometric entry systems                               
g:o:04445453 Cameras                                               
g:o:0A445453 Card readers
```

This cmdlet list candidates for custom group membership.
