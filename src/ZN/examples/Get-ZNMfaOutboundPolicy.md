### Example 1: List outbound MFA policies
```powershell
Get-ZNOutboundBlockRule
```

```output
CreatedAt     CreatedBy                            CreatedByName Description DstPort DstProcessNames FallbackToLoggedOnUser Id                                   MfaMethods ProtocolType RuleCreationMode RuleDuration SrcProcessNames State UpdatedAt
---------     ---------                            ------------- ----------- ------- --------------- ---------------------- --                                   ---------- ------------ ---------------- ------------ --------------- ----- ---------
1665512193635 1f352ed0-86f1-454f-90a5-592c197c8000 Zero Networks             443     {*}             False                  cff54715-454b-4309-9b70-3055d80a8379 {2}        6            1                1            {*}             1     1665512193635
```

This cmdlet gets outbound MFA policies from the environment.

### Example 2: Get a specific outbound MFA policy
```powershell
Get-ZNMfaOutboundPolicy -ReactivePolicyId "cff54715-454b-4309-9b70-3055d80a8379"
```

```output
ItemCreatedAt              : 1665512193635
ItemCreatedBy              : 1f352ed0-86f1-454f-90a5-592c197c8000
ItemCreatedByName          : Zero Networks
ItemDescription            : 
ItemDstEntityInfos         : 
ItemDstPort                : 443
ItemDstProcessNames        : {*}
ItemFallbackToLoggedOnUser : False
ItemId                     : cff54715-454b-4309-9b70-3055d80a8379
ItemMfaMethods             : {2}
ItemProtocolType           : 6
ItemRuleCreationMode       : 1
ItemRuleDuration           : 1
ItemSrcEntityInfos         : {}
ItemSrcProcessNames        : {*}
ItemSrcUserInfos           : {}
ItemState                  : 1
ItemUpdatedAt              : 1665512193635
```

Get a specific outbound MFA policy.

