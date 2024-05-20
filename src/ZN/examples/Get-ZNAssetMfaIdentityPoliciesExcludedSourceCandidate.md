### Example 1: Get Identity MFA Excluded Sources Candidates
```powershell
$asset = Search-ZNAsset -Fqdn dc01.posh.local
(Get-ZNAssetMfaIdentityPoliciesExcludedSourcesCandidate -AssetId $asset.AssetId).Items
```

```output
Domain     HasProtectionPolicy Id           Name
------     ------------------- --           ----
posh.local               False g:a:rZl537o4 Access Control Assistance Operators
posh.local               False g:a:V9kshIRu Account Operators
posh.local               False g:a:Q4IYhlTC Administrators
posh.local               False g:a:OtwDATUK Allowed RODC Password Replication Group
                               a:n:3Odw9d40 as01
posh.local               False g:a:3AFg9RPE Backup Operators
posh.local               False g:a:eSfiOaM0 Certificate Service DCOM Access
posh.local               False g:a:Qx5wSzxi Cert Publishers
system                   False g:s:04669ce2 Clients
system                   False g:s:29669ce2 Client subnets
```

This cmdlet lists excluded sources candidates for Identity MFA.
