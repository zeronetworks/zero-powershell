### Example 1: Get possible destinations for outbound MFA Policy simulation
```powershell
(Get-ZNSegmentMfaOutboundPoliciesSimulateDesinationCandidate).Items
```

```output
AssetType Domain Id           Name   ProtectionState
--------- ------ --           ----   ---------------
4                a:t:oxafRZct webcam 1
```

This cmdlet will return possbile candidates for destinations in an outbound MFA policy simulation.

### Example 2: Search for a candidate
```powershell
(Get-ZNSegmentMfaOutboundPoliciesSimulateDesinationCandidate -Search webcam).Items
```

```output
AssetType Domain Id           Name   ProtectionState
--------- ------ --           ----   ---------------
4                a:t:oxafRZct webcam 1
```

To find a specific candidate use the search parameter with the Name to be searched.
