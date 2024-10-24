### Example 1: List group candidates for adding a user to
```powershell
Get-ZNUserMemberOfGroupCandidate -UserId u:d:2HOfhbpY
```

```output
Id           Name
--           ----
g:c:vcLDMdYI ProtectionPolicy
```

This cmdlet lists group candidates that a user can be added to.