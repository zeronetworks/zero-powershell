### Example 1: Get destination candidates for an OT outbound Rule
```powershell
(Get-ZNOutboundOtRulesDestinationCandidate).Items
```

```output
Id           Name                                      Domain
--           ----                                      ------
b:114002     Segmented OT/IoT devices                  
g:o:1Lda83cd 3D Printer                                OT/IoT
g:a:5C0h1yd5 Access Control Assistance Operators       posh.local
g:o:1Kda83cd Access control devices                    OT/IoT
g:o:1Mda83cd Access control gateway                    OT/IoT
g:a:HJWKrlHo Account Operators                         posh.local
g:a:HBWuhIUi Administrators                            posh.local
g:a:9vY3VFbm Allowed RODC Password Replication Group   posh.local
g:s:18da83cd Any asset except segmented OT/IoT devices system
g:s:28da83cd Any except trusted Internet               system
g:o:1Nda83cd ATM                                       OT/IoT
```

This cmdlet lists destination candidates for OT outbound rule.