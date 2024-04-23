### Example 1: List Identity MFA source user candidates
```powershell
$userId = "u:a:jRVryncp"
(Get-ZNUserMfaIdentityPoliciesSourceUserCandidate -UserId $userid).Items
```

```output
Domain     Id           Name
------     --           ----
           b:111001     Any user
posh.local g:a:rZl537o4 Access Control Assistance Operators
posh.local g:a:V9kshIRu Account Operators
posh.local g:a:Q4IYhlTC Administrators
posh.local g:a:OtwDATUK Allowed RODC Password Replication Group
posh.local g:a:3AFg9RPE Backup Operators
posh.local g:a:eSfiOaM0 Certificate Service DCOM Access
posh.local g:a:Qx5wSzxi Cert Publishers
posh.local g:a:leHDIXAw Cloneable Domain Controllers
posh.local g:a:jF0PdFzE Cryptographic Operators
posh.local g:a:PHBjR5mL Denied RODC Password Replication Group
system     g:s:81669ce2 Zero Networks Admins
system     g:s:83669ce2 Zero Networks Operators
system     g:s:82669ce2 Zero Networks Viewers
```

This cmdlet lists source user candidates for Identity MFA.
