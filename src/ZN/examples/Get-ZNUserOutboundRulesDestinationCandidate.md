### Example 1: List destination candidates for a rule
```powershell
$user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
(Get-ZNUserOutboundRulesDestinationCandidate -UserId $user.Id -RuleType 3).Items
```

```output
Id           Name                                    Domain
--           ----                                    ------
b:110001     Any asset                               
g:o:1Lda83cd 3D Printer                              OT/IoT
g:a:5C0h1yd5 Access Control Assistance Operators     posh.local
g:o:1Kda83cd Access control devices                  OT/IoT
g:o:1Mda83cd Access control gateway                  OT/IoT
g:a:HJWKrlHo Account Operators                       posh.local
a:t:BPFR4ZlN activeOT                                
g:a:HBWuhIUi Administrators                          posh.local
a:n:c9PBr848 al01                                    
g:a:9vY3VFbm Allowed RODC Password Replication Group posh.local
g:o:1Nda83cd ATM                                     OT/IoT
```

This cmdlet lists destination candidates for a rule.
