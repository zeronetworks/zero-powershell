### Example 1: List candidates for Assets in a Connect Policy
```powershell
(Get-ZNConnectPoliciesAssetsCandidate).Items
```

```output
AssetStatus                 : 
AssetType                   : 
BreakGlassActivated         : 
Domain                      : 
Guid                        : 
HasIdentityProtectionPolicy : 
HasNetworkProtectionPolicy  : 
Id                          : b:110001
IdentityProtectionState     : 
IsQuarantined               : 
Name                        : Any asset
OtLocattionInterfaceName    : 
OtLocattionName             : 
OtLocattionSwitchId         : 
ProtectionState             : 
RpcProtectionState          : 
Sid                         : 

AssetStatus                 : 
AssetType                   : 
BreakGlassActivated         : 
Domain                      : posh.local
Guid                        : e45b0e81-3f2a-4529-af87-c77fedc49429
HasIdentityProtectionPolicy : False
HasNetworkProtectionPolicy  : False
Id                          : g:a:5C0h1yd5
IdentityProtectionState     : 
IsQuarantined               : 
Name                        : Access Control Assistance Operators
OtLocattionInterfaceName    : 
OtLocattionName             : 
OtLocattionSwitchId         : 
ProtectionState             : 
RpcProtectionState          : 
Sid                         : S-1-5-32-579

AssetStatus                 : 
AssetType                   : 
BreakGlassActivated         : 
Domain                      : posh.local
Guid                        : eb2f1e5b-efb4-4c72-ab26-1ffb0b370775
HasIdentityProtectionPolicy : False
HasNetworkProtectionPolicy  : False
Id                          : g:a:HJWKrlHo
IdentityProtectionState     : 
IsQuarantined               : 
Name                        : Account Operators
OtLocattionInterfaceName    : 
OtLocattionName             : 
OtLocattionSwitchId         : 
ProtectionState             : 
RpcProtectionState          : 
Sid                         : S-1-5-32-548...
```

This cmdlet lists asset candidates for a Connect policy.
