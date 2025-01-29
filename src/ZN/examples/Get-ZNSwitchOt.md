### Example 1: List switch OT assets
```powershell
(Get-ZNSwitchOt -SwitchId w:c:IBlczUkw).Items 
```

```output
AddedAt                      : 
AddedById                    : 
AddedByName                  : 
AssetStatus                  : 13
AssetType                    : 22
AssignedDeploymentId         : 
AssignedDeploymentName       : 
BreakGlassActivated          : False
DistinguishedName            : 
Domain                       : 
EnvironmentGroupId           : 
EnvironmentGroupName         : 
Fqdn                         : otv2.posh.llocal
Guid                         : 
HealthStateHealthIssuesList  : {}
HealthStateHealthStatus      : 4
IPV4Addresses                : {192.168.200.2}
IPV6Addresses                : {}
Id                           : a:t:ffPDi031
IdNamePairId                 : 
IdentityProtectAt            : 
IdentityProtectedAt          : 
IdentityProtectionState      : 1
InactiveReason               : 3
InactiveSince                : 
LastLogonReplicated          : 
Name                         : otv2
OperatingSystem              : 
PasswordUpdateTime           : 
PreferredDeploymentId        : 
PreferredDeploymentId1       : 
PreferredDeploymentName      : 
PrincipalName                : 
ProtectAt                    : 
ProtectedAt                  : 
ProtectionState              : 1
RpcMonitored                 : False
RpcProtectAt                 : 
RpcProtectedAt               : 
RpcProtectionState           : 1
ServicePrincipleNames        : 
Sid                          : 
Source                       : 7
StateAssetId                 : 
StateIdentityProtectAt       : 
StateIdentityProtectedAt     : 
StateIdentityProtectionState : 
StateIsAssetConnected        : 
StateLastConnectedAt         : 
StateLastDisconnectedAt      : 
StateProtectAt               : 
StateProtectedAt             : 
StateProtectionState         : 
StateRpcProtectAt            : 
StateRpcProtectedAt          : 
StateRpcProtectionState      : 
UserAccountControl           :
```

This cmdlet lists switch OT assets.
