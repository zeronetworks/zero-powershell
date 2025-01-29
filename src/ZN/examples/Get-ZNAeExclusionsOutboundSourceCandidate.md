### Example 1: Get possible sources for AE outbound exclusion
```powershell
(Get-ZNAeExclusionsOutboundsourceCandidate).Items
```

```output
Domain     Id           Name
------     --           ----
           b:110001     Any asset
posh.local g:a:SMNYUVPK Access Control Assistance Operators
posh.local g:a:ygWshrUK Account Operators
posh.local g:a:vDSBhdKu Administrators
posh.local g:a:lCM1TULR Allowed RODC Password Replication Group
           a:n:hpyRdfjJ as01
posh.local g:a:vRjsI4Re Backup Operators
OT/IoT     g:o:0T741a05 Biometric entry systems
OT/IoT     g:o:04741a05 Cameras
OT/IoT     g:o:0A741a05 Card readers
posh.local g:a:Wuqi52A3 Certificate Service DCOM Access
```

This cmdlet will return possbile candidates for destinations in an AE outbound exclusion.

### Example 2: Search for a candidate
```powershell
(Get-ZNAeExclusionsOutboundsourceCandidate -search DC01).Items
```

```output
Domain     Id           Name
------     --           ----
posh.local a:a:mfDtEc1O dc01
```

To find a specific candidate use the search parameter with the Name to be searched.
