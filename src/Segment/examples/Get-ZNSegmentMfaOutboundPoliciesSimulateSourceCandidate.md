### Example 1: Get possible sources for outbound MFA Policy simulation
```powershell
(Get-ZNSegmentMfaOutboundPoliciesSimulateSourceCandidate).Items 
```

```output
AssetType Domain    Id           Name    ProtectionState
--------- ------    --           ----    ---------------
2         zero.labs a:a:ZgBWOMyc DC1     5
2         zero.labs a:a:GnyWAsYs FS1     3
2         zero.labs a:a:EP2KKITZ TRUST1  3
1         zero.labs a:a:6BokfBbU WIN10-1 3
1         zero.labs a:a:HYZhxRzI WIN10-2 3
1         zero.labs a:a:qnRgyRA9 WIN10-3 3
1         zero.labs a:a:5wiknOhs WIN7    3
1         zero.labs a:a:cxIJepiA win8-1  3
```

This cmdlet will return possbile candidates for sources in an outbound MFA policy simulation.

### Example 2: Search for a candidate
```powershell
(Get-ZNSegmentMfaOutboundPoliciesSimulateSourceCandidate -search DC1).Items
```

```output
AssetType Domain    Id           Name ProtectionState
--------- ------    --           ---- ---------------
2         zero.labs a:a:ZgBWOMyc DC1  5
```

To find a specific candidate use the search parameter with the Name to be searched.
