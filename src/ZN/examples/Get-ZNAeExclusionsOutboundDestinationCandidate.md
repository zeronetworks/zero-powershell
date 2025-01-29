### Example 1: Get possible destinations for AE outbound exclusion
```powershell
(Get-ZNAeExclusionsOutboundDestinationCandidate).Items
```

```output
Domain     Id           Name
------     --           ----
           b:110002     All segmented assets
           b:110004     All segmented servers
           b:110005     All segmented clients
posh.local g:a:SMNYUVPK Access Control Assistance Operators
posh.local g:a:ygWshrUK Account Operators
posh.local g:a:vDSBhdKu Administrators
posh.local g:a:lCM1TULR Allowed RODC Password Replication Group
           a:n:hpyRdfjJ as01
posh.local g:a:vRjsI4Re Backup Operators
posh.local g:a:Wuqi52A3 Certificate Service DCOM Access
posh.local g:a:eHxbptyg Cert Publishers
posh.local g:a:YKAUh2xA Cloneable Domain Controllers
system     g:s:30741a05 Connect regions
```

This cmdlet will return possbile candidates for destinations in an AE outbound exclusion.

### Example 2: Search for a candidate
```powershell
(Get-ZNAeExclusionsOutboundDestinationCandidate -search DC01).Items
```

```output
Domain     Id           Name
------     --           ----
posh.local a:a:mfDtEc1O dc01
```

To find a specific candidate use the search parameter with the Name to be searched.
