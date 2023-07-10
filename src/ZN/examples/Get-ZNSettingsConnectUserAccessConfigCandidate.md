### Example 1: Get User Access Config Candidate
```powershell
Get-ZNSettingsConnectUserAccessConfigCandidate
```

```output
CreatedAt     Description                                                                DirectMembersCount DistinguishedName
---------     -----------                                                                ------------------ -----------------           
                                                                                                                                        
1677251756332                                                                            0                                              
1677251756933                                                                            0                                              
1677251757039                                                                            4                                              
1677251756753                                                                            0                                              
1675961668286 Includes all IP ranges without protected OT/IoT devices in the environment 3                                              
1677251756911                                                                            0                                              
1675961668336 Includes all biometric entry systems in the environment                    0                                              
1675961668319 Includes all camera devices in the environment                             27                                             
1675961668353 Includes all card readers in the environment                               0                                              
1677251756298                                                                            0                                              
1677251755513                                                                                               CN=Guest,CN=Users,DC=posh,D…
1677251756940                                                                                               CN=krbtgt,CN=Users,DC=posh,…
1681395846886                                                                                               CN=nicholas,CN=Users,DC=pos…
1677251757162                                                                                               CN=test,CN=Users,DC=posh,DC…
1677251756981                                                                                               CN=zero,CN=Users,DC=posh,DC…
1677251757084                                                                                               CN=ZNRemoteManagement,OU=Ze…
```

The cmdlet lists User Access Configuration candidates.
