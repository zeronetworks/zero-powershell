### Example 1: List excluded destination candidates for an Inbound OT rules
```powershell
$group = (Get-ZNGroup -Search Cameras).Items | where {$_.Name -eq "Cameras"} 
(Get-ZNGroupsInboundOtRulesExcludedDestinationCandidate -GroupType ot -GroupId $group.Id).Items
```

```output
Id           Name                                      Domain
--           ----                                      ------
g:o:1Lda83cd 3D Printer                                OT/IoT
g:a:5C0h1yd5 Access Control Assistance Operators       posh.local
g:o:1Kda83cd Access control devices                    OT/IoT
g:o:1Mda83cd Access control gateway                    OT/IoT
g:a:HJWKrlHo Account Operators                         posh.local
a:t:BPFR4ZlN activeOT                                  
g:a:HBWuhIUi Administrators                            posh.local
g:a:9vY3VFbm Allowed RODC Password Replication Group   posh.local
g:s:18da83cd Any asset except segmented OT/IoT devices system
g:s:28da83cd Any except trusted Internet               system
```

This cmdlet lists excluded destination candidates for an Inbound OT rule.
