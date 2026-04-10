### Example 1: List candidates for Destinations in a Connect Policy
```powershell
(Get-ZNConnectPoliciesDestinationsCandidate).Items
```

```output
AssetStatus                 : 
AssetType                   : 
BreakGlassActivated         : 
Domain                      : system
Guid                        : 
HasIdentityProtectionPolicy : 
HasNetworkProtectionPolicy  : 
Id                          : g:s:14da83cd
IdentityProtectionState     : 
IsQuarantined               : 
Name                        : Internal subnets
OtLocattionInterfaceName    : 
OtLocattionName             : 
OtLocattionSwitchId         : 
ProtectionState             : 
RpcProtectionState          : 
Sid                         : 

AssetStatus                 : 
AssetType                   : 
BreakGlassActivated         : 
Domain                      : OT/IoT
Guid                        : 89fb6426-1f11-47fa-ae5f-708c0e501585
HasIdentityProtectionPolicy : False
HasNetworkProtectionPolicy  : False
Id                          : g:o:1Lda83cd
IdentityProtectionState     : 
IsQuarantined               : 
Name                        : 3D Printer
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
Domain                      : OT/IoT
Guid                        : 9f8c5ee7-d67f-4319-9c19-d583095c5520
HasIdentityProtectionPolicy : False
HasNetworkProtectionPolicy  : False
Id                          : g:o:1Kda83cd
IdentityProtectionState     : 
IsQuarantined               : 
Name                        : Access control devices
OtLocattionInterfaceName    : 
OtLocattionName             : 
OtLocattionSwitchId         : 
ProtectionState             : 
RpcProtectionState          : 
Sid                         : ...
```

This cmdlet lists destination candidates for a Connect policy.
