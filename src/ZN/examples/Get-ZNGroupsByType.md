### Example 1: List Groups by type
```powershell
Get-ZNGroupsByType -GroupType AD
```

```output
Id           Name                                    Description DirectMembersCount
--           ----                                    ----------- ------------------
g:a:qu04AfTz Access Control Assistance Operators                 0
g:a:XDRxcVDz Account Operators                                   0
g:a:MBAj0Xfx Administrators                                      4
g:a:u6xPbBLg Allowed RODC Password Replication Group             0
g:a:JjhBvgRW Backup Operators                                    0
g:a:j4oCHNuP Certificate Service DCOM Access                     0
g:a:YeUXSDi6 Cert Publishers                                     0
g:a:5uhxEQPp Cloneable Domain Controllers                        0
g:a:lPQyszKw Cryptographic Operators                             0
g:a:Ymj7i8np Denied RODC Password Replication Group              8
```

This cmdlet lists groups by type.
