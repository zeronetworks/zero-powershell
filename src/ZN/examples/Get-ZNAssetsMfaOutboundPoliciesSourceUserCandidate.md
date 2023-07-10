### Example 1: Get possible source users for outbound MFA Policy for a specific asset
```powershell
(Get-ZNAssetsMfaOutboundPoliciesSourceUserCandidate -AssetId 'a:a:OtfLGUBq').Items
```

```output
Domain     Id           Name
------     --           ----
           b:111001     Any user
posh.local g:a:qu04AfTz Access Control Assistance Operators
posh.local g:a:XDRxcVDz Account Operators
posh.local g:a:MBAj0Xfx Administrators
posh.local g:a:u6xPbBLg Allowed RODC Password Replication Group
posh.local g:a:JjhBvgRW Backup Operators
posh.local g:a:j4oCHNuP Certificate Service DCOM Access
posh.local g:a:YeUXSDi6 Cert Publishers
posh.local g:a:5uhxEQPp Cloneable Domain Controllers
posh.local g:a:lPQyszKw Cryptographic Operators
posh.local g:a:Ymj7i8np Denied RODC Password Replication Group
posh.local u:a:r6ZkL5Y0 Guest
posh.local u:a:IiObBkVQ krbtgt
posh.local u:a:w27loY5p nicholas
posh.local u:a:Tolw5kf6 test
posh.local u:a:RVVXGo4w zero
posh.local u:a:V61t0gZB ZNRemoteManagement
system     g:s:81445453 Zero Networks Admins
system     g:s:83445453 Zero Networks Operators
system     g:s:82445453 Zero Networks Viewers
```

This cmdlet will return possbile candidates for source users in an outbound MFA policy.

### Example 2: Search for a candidate
```powershell
(Get-ZNAssetsMfaOutboundPoliciesSourceUserCandidate -AssetId 'a:a:OtfLGUBq' -Search administrator).Items
```

```output
Domain     Id           Name
------     --           ----
posh.local g:a:MBAj0Xfx Administrators
posh.local g:a:i01gT3az Hyper-V Administrators
posh.local g:a:oDcA2iHM Storage Replica Administrators
```

To find a specific candidate use the search parameter with the Name to be searched.
