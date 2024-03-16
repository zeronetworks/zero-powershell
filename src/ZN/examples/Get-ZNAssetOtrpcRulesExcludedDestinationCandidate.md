### Example 1: Get excluded destination candidates for an rpc rule for a specific asset
```powershell
(Get-ZNAssetOtrpcRulesExcludedDestinationCandidate -AssetId 'a:t:itN4uaLX').Items
```

```output
Domain     HasProtectionPolicy Id           Name
------     ------------------- --           ----
posh.local               False g:a:rZl537o4 Access Control Assistance Operators
posh.local               False g:a:V9kshIRu Account Operators
posh.local               False g:a:Q4IYhlTC Administrators
posh.local               False g:a:OtwDATUK Allowed RODC Password Replication Group
posh.local               False g:a:3AFg9RPE Backup Operators
posh.local               False g:a:eSfiOaM0 Certificate Service DCOM Access
posh.local               False g:a:Qx5wSzxi Cert Publishers
system                   False g:s:29669ce2 Client subnets
posh.local               False g:a:leHDIXAw Cloneable Domain Controllers
posh.local               False g:a:jF0PdFzE Cryptographic Operators
posh.local                     a:a:VWW2G2C8 dc01
posh.local                     a:a:sMnd5NkL ts01
posh.local                     a:a:GLUxqjgc wac01
posh.local                     a:a:A6PSKQXP ZADCOMP1
posh.local                     a:a:fAloyhrG ZADCOMP10
posh.local                     a:a:v9j71uhH ZADCOMP2
posh.local                     a:a:DOFtbyLr ZADCOMP3
posh.local                     a:a:BfAzS2Uc ZADCOMP4
posh.local                     a:a:4wiNkC9Z ZADCOMP5
posh.local                     a:a:CO4vV7R7 ZADCOMP6
```

This cmdlet gets the possible excluded destination candidates for a rpc rule for a specific asset.
