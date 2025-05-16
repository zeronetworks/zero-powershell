### Example 1: List excluded destination candidate for OT inbound rule
```powershell
(Get-ZNAssetInboundOtRulesExcludedDestinationCandidate -AssetId $asset).Items
```

```output
AssetType BreakGlassActivated Domain     Email Guid                                 HasIdentityProtectionPolicy HasNetworkProtectionPolicy
--------- ------------------- ------     ----- ----                                 --------------------------- --------------------------
                              OT/IoT           89fb6426-1f11-47fa-ae5f-708c0e501585                       False                      False
                              posh.local       e45b0e81-3f2a-4529-af87-c77fedc49429                       False                      False
                              OT/IoT           9f8c5ee7-d67f-4319-9c19-d583095c5520                       False                      False
                              OT/IoT           3a9a24d4-b5a3-4329-b0c0-d4c2388dee07                       False                      False
                              posh.local       eb2f1e5b-efb4-4c72-ab26-1ffb0b370775                       False                      False
5         False                                                                                                                           
                              posh.local       3f831f70-8387-4052-86a1-35bfad5e4cd5                       False                      False
                              posh.local       f21f9294-e7ba-4cab-a941-420d1329c68c                       False                      False
                              system           d19151a0-94fc-4e4b-90e0-4df378e29bd6                       False                      False
                              system           de68605e-8623-4106-90a9-db351c3b80dd                       False                      False  
```

This cmdlet lists excluded destination candidates for an OT inbound rule.
