### Example 1: Get possible sources for AE inbound exclusion
```powershell
(Get-ZNAeExclusionsInboundSourceCandidate).Items
```

```output
Id           Name                                    Domain
--           ----                                    ------
b:110002     All segmented assets                    
b:110004     All segmented servers                   
b:110005     All segmented clients                   
g:a:SMNYUVPK Access Control Assistance Operators     posh.local
g:a:ygWshrUK Account Operators                       posh.local
g:a:vDSBhdKu Administrators                          posh.local
g:a:lCM1TULR Allowed RODC Password Replication Group posh.local
a:n:hpyRdfjJ as01                                    
g:a:vRjsI4Re Backup Operators                        posh.local
g:a:Wuqi52A3 Certificate Service DCOM Access         posh.local
g:a:eHxbptyg Cert Publishers                         posh.local
g:a:YKAUh2xA Cloneable Domain Controllers            posh.local
g:s:30741a05 Connect regions                         system
```

This cmdlet will return possbile candidates for destinations in an AE inbound exclusion.

### Example 2: Search for a candidate
```powershell
(Get-ZNAeExclusionsInboundDestinationCandidate -search DC01).Items
```

```output
Id           Name Domain
--           ---- ------
a:a:mfDtEc1O dc01 posh.local
```

To find a specific candidate use the search parameter with the Name to be searched.
