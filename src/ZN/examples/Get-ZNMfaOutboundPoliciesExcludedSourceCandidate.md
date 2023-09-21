### Example 1: Get possible excluded source for outbound MFA Policy
```powershell
(Get-ZNMfaOutboundPoliciesExcludedSourceCandidate).Items
AssetType Domain Id           Name                     ProtectionState
--------- ------ --           ----                     ---------------
                 g:s:17276c2c Protected OT/IoT devices 
          custom g:c:gP9POclU Test Servers             
4                a:t:oxafRZct webcam                   1
```

This cmdlet will return possbile candidates for destinations in an outbound MFA policy.

### Example 2: Search for a candidate
```powershell
(Get-ZNMfaOutboundPoliciesExcludedSourceCandidate -Search webcam).Items
AssetType Domain Id           Name   ProtectionState
--------- ------ --           ----   ---------------
4                a:t:oxafRZct webcam 1
```

To find a specific candidate use the search parameter with the Name to be searched.
