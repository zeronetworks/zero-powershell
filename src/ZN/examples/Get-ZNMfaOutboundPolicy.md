### Example 1: List outbound MFA policy
```powershell
Get-ZNMFAOutboundPolicy
```

```output
Action CreatedAt     Description                               Direction ExcludedLocalIdsList ExpiresAt Id                                   LocalEntityId LocalProcessesList ParentId ParentType RemoteEntityIds
                                                                                                                                                                                                  List
------ ---------     -----------                               --------- -------------------- --------- --                                   ------------- ------------------ -------- ---------- ---------------
2      1665759335488                                           2         {}                   0         b4becec7-378d-4e8a-a8f9-fa31f644d74c b:110002      {*}                         0          {b:12010203042…
2      1665679730342 Test Rule                                 2         {}                   0         627e3705-2f26-4cb6-b5e2-b73b76d900b2 b:110002      {*}                         0          {b:12010101012…
2      1648736821514 Sentinel Integration - Block Malicous IPs 2         {}                   0         0faafa72-2540-4d55-9418-ed62472e0e2d b:110002      {*}                         0          {b:12ac1001012…
```

This cmdlet gets outbound MFA policies from the environment.

### Example 2: Get a specific outbound MFA policy
```powershell
Get-ZNMfaOutboundPolicy -ReactivePolicyId "cff54715-454b-4309-9b70-3055d80a8379"
```

```output
ItemAdditionalPortsList    : {}
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
ItemRuleDuration           : 1
ItemSrcEntityInfos         : {All protected assets}
ItemSrcProcessNames        : {*}
ItemSrcUserInfos           : {Any user}
ItemState                  : 1
ItemUpdatedAt              : 1665512193635
```

Get a specific outbound MFA policy.

