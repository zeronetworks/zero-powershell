### Example 1: Get mirror candidates
```powershell
Get-ZNAssetMirrorCandidate -AssetId a:a:JF2xro6g
```

```output
AssetType BreakGlassActivated Domain     Id           IdentityProtectionState Name      ProtectionState RpcProtectionState
--------- ------------------- ------     --           ----------------------- ----      --------------- ------------------
2         False               posh.local a:a:JF2xro6g 1                       DC01      5               1
2         False               posh.local a:a:wmw7t9vI 1                       FS01      5               1
2         False               posh.local a:a:e7XtRE2C 1                       FS02      5               1
3         False               posh.local a:a:MnszuWV1 1                       fsCluster 1               1
0         False               posh.local a:a:EzbcAdb7 1                       LA01      1               1
3         False               posh.local a:a:6kj1DxFZ 1                       share     1               1
2         False               posh.local a:a:yhPm6ByM 1                       SS01      1               1
1         False               posh.local a:a:o8w4Bpq7 1                       WC01      3               1
```

This cmdlet gets mirror candidates.
