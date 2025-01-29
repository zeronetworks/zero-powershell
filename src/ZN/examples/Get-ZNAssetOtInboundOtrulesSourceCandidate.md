### Example 1: List source candidates for an OT Inbound Rule
```powershell
(Get-ZNAssetOtInboundOtrulesSourceCandidate -AssetId a:t:IVCMcdit).Items
```

```output
Id           Name                                       Domain
--           ----                                       ------
b:110001     Any asset                                  
g:s:14741a05 Internal subnets                           system
g:o:1L741a05 3D Printer                                 OT/IoT
g:o:1K741a05 Access control devices                     OT/IoT
g:o:1M741a05 Access control gateway                     OT/IoT
a:n:hpyRdfjJ as01                                       
g:o:1N741a05 ATM                                        OT/IoT
g:o:1O741a05 Audio decoder                              OT/IoT
g:o:0q741a05 Autonomous vehicles                        OT/IoT
g:o:1P741a05 AV system                                  OT/IoT
g:o:0f741a05 BACnet broadcast management devices (BBMD) OT/IoT
g:o:1Q741a05 BACnet router & BBMD                       OT/IoT
```

This cmdlet lists source candidates for an OT inbound rule.
