### Example 1: List group candidates for adding an asset to
```powershell
Get-ZNAssetMemberOfGroupCandidate -AssetId a:a:ZgBWOMyc
```

```output
Id           Name
--           ----
g:c:vcLDMdYI ProtectionPolicy
g:t:01669ce2 Domain controllers
g:t:5U669ce2 Externally facing clients
```

This cmdlet lists group candidates that an asset can be added to.