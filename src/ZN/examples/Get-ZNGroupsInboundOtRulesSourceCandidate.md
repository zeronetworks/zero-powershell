### Example 1: List source candidates for an Inbound OT rules
```powershell
$group = (Get-ZNGroup -Search Cameras).Items | where {$_.Name -eq "Cameras"} 
(Get-ZNGroupsInboundOtRulesSourceCandidate -GroupType ot -GroupId $group.Id).Items
```

```output
Id           Name                                       Domain
--           ----                                       ------
b:110001     Any asset                                  
g:s:14da83cd Internal subnets                           system
g:o:1Lda83cd 3D Printer                                 OT/IoT
g:o:1Kda83cd Access control devices                     OT/IoT
g:o:1Mda83cd Access control gateway                     OT/IoT
a:t:BPFR4ZlN activeOT                                   
g:o:1Nda83cd ATM                                        OT/IoT
g:o:1Oda83cd Audio decoder                              OT/IoT
g:o:0qda83cd Autonomous vehicles                        OT/IoT
g:o:1Pda83cd AV system                                  OT/IoT
g:o:0fda83cd BACnet broadcast management devices (BBMD) OT/IoT
g:o:1Qda83cd BACnet router & BBMD                       OT/IoT
```

This cmdlet lists source candidates for an Inbound OT rule.
