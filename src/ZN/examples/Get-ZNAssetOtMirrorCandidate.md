### Example 1: Get mirror candidates
```powershell
Get-ZNAssetOtMirrorCandidate -AssetId a:t:BPFR4ZlN
```

```output
AssetType BreakGlassActivated Domain Id           IdentityProtectionState Name     ProtectionState RpcProtectionSta
                                                                                                   te
--------- ------------------- ------ --           ----------------------- ----     --------------- ----------------
5         False                      a:t:BPFR4ZlN 1                       activeOT 1               1
4         False                      a:t:o0AARV78 1                       otv1     1               1
22        False                      a:t:ffPDi031 1                       otv2     1               1
```

This cmdlet gets mirror candidates.
