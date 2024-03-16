### Example 1: Get possible destinations for outbound MFA Policy simulation
```powershell
(Get-ZNMfaOutboundPoliciesSimulateDesinationCandidate).Items
```

```output
Domain HasProtectionPolicy Id           Name
------ ------------------- --           ----
                           a:t:u7QxbAUn ot193384
                           a:t:LLkiZLdF ot357111
                           a:t:OeG7qsVV ot418976
                           a:t:GYWtg5mN ot471886
                           a:t:zM7Pefnl ot644825
                           a:t:3qtTU5BB ot835742
                           a:t:WP452h2q ot849334
                           a:t:KR11JaWS ot951556
                           a:t:KxhYUkkq ot997013
                           a:t:aCxJya46 switch01
```

This cmdlet will return possbile candidates for destinations in an outbound MFA policy.

### Example 2: Search for a candidate
```powershell
(Get-ZNMfaOutboundPoliciesSimulateDesinationCandidate -Search switch01).Items
```

```output
Domain HasProtectionPolicy Id           Name
------ ------------------- --           ----
                           a:t:aCxJya46 switch01
```

To find a specific candidate use the search parameter with the Name to be searched.
