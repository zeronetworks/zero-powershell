### Example 1: Get possible destinations for outbound MFA Policy for a specific asset
```powershell
(Get-ZNAssetsMfaOutboundPoliciesDestinationCandidate -AssetId 'a:a:OtfLGUBq').Items
```

```output
Domain HasProtectionPolicy Id           Name
------ ------------------- --           ----
                           g:s:17445453 Protected OT/IoT devices
OT/IoT False               g:o:0T445453 Biometric entry systems
OT/IoT False               g:o:04445453 Cameras
OT/IoT False               g:o:0A445453 Card readers
OT/IoT False               g:o:0S445453 Door locks
OT/IoT False               g:o:06445453 Factory controllers
OT/IoT False               g:o:0L445453 Fire alarms
OT/IoT False               g:o:0P445453 Firewall appliance
OT/IoT False               g:o:0K445453 Game consoles
OT/IoT False               g:o:0J445453 Historians
OT/IoT False               g:o:0E445453 HMIs
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
(Get-ZNAssetsMfaOutboundPoliciesDestinationCandidate -AssetId 'a:a:OtfLGUBq' -Search switch01).Items
```

```output
Domain HasProtectionPolicy Id           Name
------ ------------------- --           ----
                           a:t:aCxJya46 switch01
```

To find a specific candidate use the search parameter with the Name to be searched.
