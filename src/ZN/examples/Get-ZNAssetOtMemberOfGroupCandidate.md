### Example 1: List group candidates for adding an asset to
```powershell
Get-ZNAssetOTMemberOfGroupCandidate -AssetId a:t:0altpr5J
```

```output
Id           Name
--           ----
g:c:vcLDMdYI ProtectionPolicy
g:t:01669ce2 Domain controllers
g:t:5U669ce2 Externally facing clients
g:t:5V669ce2 Externally facing servers
```

This cmdlet lists group candidates that an asset can be added to.