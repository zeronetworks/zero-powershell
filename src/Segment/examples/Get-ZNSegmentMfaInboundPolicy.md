### Example 1: List inbound MFA policies
```powershell
Get-ZNSegmentMfaInboundPolicy
```

```output
CreatedAt     CreatedBy                            CreatedByName Description DstPort DstProcessNames FallbackToLoggedOnUser Id                                   MfaMethods   ProtocolType RuleCreationMode RuleDuration SrcProcessNames State UpdatedAt
---------     ---------                            ------------- ----------- ------- --------------- ---------------------- --                                   ----------   ------------ ---------------- ------------ --------------- ----- ---------
1649105796514 1f352ed0-86f1-454f-90a5-592c197c8000 Zero Networks             345     {*}             False                  f68d322c-1cb0-451d-aff2-c920a1a17333 {1}          6            1                6            {*}             1     1649105796514
1646149214106 1f352ed0-86f1-454f-90a5-592c197c8000 Zero Networks             3389    {*}             False                  1bb6439f-ee73-4b7e-b555-30dbbd17418e {1, 2, 3, 4} 6            1                6            {*}             1     1646230297277
```

This cmdlet gets inbound MFA policies from the environment.

### Example 2: Get a specific inbound MFA policy
```powershell
Get-ZNSegmentMfaInboundPolicy -ReactivePolicyId "f68d322c-1cb0-451d-aff2-c920a1a17333"
```

```output
ItemCreatedAt              : 1649105796514                                                                                                                                                                                                                         ItemCreatedBy              : 1f352ed0-86f1-454f-90a5-592c197c8000
ItemCreatedByName          : Zero Networks
ItemDescription            : 
ItemDstEntityInfos         : 
ItemDstPort                : 345
ItemDstProcessNames        : {*}
ItemFallbackToLoggedOnUser : False
ItemId                     : f68d322c-1cb0-451d-aff2-c920a1a17333
ItemMfaMethods             : {1}
ItemProtocolType           : 6
ItemRuleCreationMode       : 1
ItemRuleDuration           : 6
ItemSrcEntityInfos         : {}
ItemSrcProcessNames        : {*}
ItemSrcUserInfos           : {}
ItemState                  : 1
ItemUpdatedAt              : 1649105796514
```

Get a specific inbound MFA policy.

