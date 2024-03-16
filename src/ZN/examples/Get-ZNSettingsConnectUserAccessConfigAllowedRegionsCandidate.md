### Example 1: Get Connect User Access Config candidates for Allowed Reagionssettings
```powershell
Get-ZNSettingsConnectUserAccessConfigAllowedRegionsCandidate
```

```output
ConnectivityStateAfterReboot CreatedAt     Description ForceSsoAuthentication Id           Name       SessionTtlHours UpdatedAt
---------------------------- ---------     ----------- ---------------------- --           ----       --------------- ---------
0                                                      False                  b:110007     Any region 0               
0                            1685619785028             False                  r:a:qjNbW2rx azure-posh 0               1685619785028
0                            1684846883972             False                  r:a:q0tqD2rf TestRegion 0               1692920163584            
```

This cmdlet returns the possible candidates for allowed regions in the user access configurations.
