### Example 1: List destination candidates for an OT Outbound Rule
```powershell
(Get-ZNAssetOtOutboundOtrulesDestinationCandidate -AssetId a:t:IVCMcdit).Items
```

```output
Id           Name                                      Domain
--           ----                                      ------
b:114002     Segmented OT/IoT devices                  
g:o:1L741a05 3D Printer                                OT/IoT
g:a:SMNYUVPK Access Control Assistance Operators       posh.local
g:o:1K741a05 Access control devices                    OT/IoT
g:o:1M741a05 Access control gateway                    OT/IoT
g:a:ygWshrUK Account Operators                         posh.local
g:a:vDSBhdKu Administrators                            posh.local
g:a:lCM1TULR Allowed RODC Password Replication Group   posh.local
g:s:18741a05 Any asset except segmented OT/IoT devices system
g:s:28741a05 Any except trusted Internet               system
g:o:1N741a05 ATM                                       OT/IoT
```

This cmdlet lists destination candidates for an OT inbound rule.
