### Example 1: List Segmented Assets
```powershell
(Get-ZNAssetsNetworkSegmented).Items
```

```output
AddedAt                      : 
AddedById                    : 
AddedByName                  : 
AssetStatus                  : 5
AssetType                    : 15
AssignedDeploymentId         : 
AssignedDeploymentName       : 
BreakGlassActivated          : False
DistinguishedName            : 
Domain                       : 
EnvironmentGroupId           : 
EnvironmentGroupName         : 
Fqdn                         : switch01
Guid                         : 
HealthStateHealthIssuesList  : {}
HealthStateHealthStatus      : 4
IPV4Addresses                : {10.0.0.250}
IPV6Addresses                : {}
Id                           : a:t:HQ4WQBZo
IdNamePairId                 : 
IdentityProtectAt            : 
IdentityProtectedAt          : 
IdentityProtectionState      : 1
InactiveReason               : 3
InactiveSince                : 
LastLogonReplicated          : 
Name                         : switch01
OperatingSystem              : 
PasswordUpdateTime           : 
PreferredDeploymentId        : 
PreferredDeploymentId1       : 
PreferredDeploymentName      : 
PrincipalName                : 
ProtectAt                    : 
ProtectedAt                  : 1702315984418
ProtectionState              : 3
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

AddedAt                      : 
AddedById                    : 
AddedByName                  : 
AssetStatus                  : 2
AssetType                    : 2
AssignedDeploymentId         : 0c4a5747-19de-4961-b4b6-6cf5ecfb36b5
AssignedDeploymentName       : ts01
BreakGlassActivated          : False
DistinguishedName            : 
Domain                       : posh.local
EnvironmentGroupId           : 
EnvironmentGroupName         : 
Fqdn                         : ts01.posh.local
Guid                         : 
HealthStateHealthIssuesList  : {}
HealthStateHealthStatus      : 1
IPV4Addresses                : {10.0.0.5}
IPV6Addresses                : {}
Id                           : a:a:cPpim9Xb
IdNamePairId                 : 0c4a5747-19de-4961-b4b6-6cf5ecfb36b5
IdentityProtectAt            : 
IdentityProtectedAt          : 1702316224793
IdentityProtectionState      : 3
InactiveReason               : 3
InactiveSince                : 
LastLogonReplicated          : 
Name                         : ts01
OperatingSystem              : Windows Server 2022 Datacenter
PasswordUpdateTime           : 1728520682343
PreferredDeploymentId        : 
PreferredDeploymentId1       : 
PreferredDeploymentName      : 
PrincipalName                : POSH\TS01$
ProtectAt                    : 
ProtectedAt                  : 1728500988174
ProtectionState              : 3
RpcMonitored                 : True
RpcProtectAt                 : 
RpcProtectedAt               : 
RpcProtectionState           : 1
ServicePrincipleNames        : 
Sid                          : 
Source                       : 3
StateAssetId                 : a:a:cPpim9Xb
StateIdentityProtectAt       : 
StateIdentityProtectedAt     : 1702316224793
StateIdentityProtectionState : 3
StateIsAssetConnected        : True
StateLastConnectedAt         : 1729607235810
StateLastDisconnectedAt      : 
StateProtectAt               : 
StateProtectedAt             : 1728500988174
StateProtectionState         : 3
StateRpcProtectAt            : 
StateRpcProtectedAt          : 
StateRpcProtectionState      : 1
UserAccountControl           :
```

This cmdlet lists network segmented assets.
