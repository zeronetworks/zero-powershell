### Example 1: List destination candidates for a MFA policy
```powershell
$user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
(Get-ZNUserMfaOutboundPoliciesDestinationCandidate -UserId $user.id).Items
```

```output
Id           Name                                       Domain
--           ----                                       ------
g:s:17da83cd Segmented OT/IoT devices                   
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

This cmdlet lists destination candidates for an MFA policy.
