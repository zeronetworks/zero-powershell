### Example 1: List assets in RPC Learnings
```powershell
(Get-ZNAssetsRpcQueued).Items
```

```output
AddedAt                      : 
AddedById                    : 
AddedByName                  : 
AssetStatus                  : 2
AssetType                    : 2
AssignedDeploymentId         : f56dd59d-ab65-45ed-871c-b6c0742db568
AssignedDeploymentName       : ts01
BreakGlassActivated          : False
DistinguishedName            : 
Domain                       : posh.local
EnvironmentGroupId           : 
EnvironmentGroupName         : 
Fqdn                         : dc01.posh.local
Guid                         : 
HealthStateHealthIssuesList  : {}
HealthStateHealthStatus      : 1
IPV4Addresses                : {10.0.0.4}
IPV6Addresses                : {fe80::bf24:9b00:66bd:2f51}
Id                           : a:a:VWW2G2C8
IdNamePairId                 : f56dd59d-ab65-45ed-871c-b6c0742db568
IdentityProtectAt            : 
IdentityProtectedAt          : 
IdentityProtectionState      : 1
InactiveReason               : 3
InactiveSince                : 
LastLogon                    : 1716175601728
LastLogonTimestamp           : 1716175601712
Name                         : dc01
OperatingSystem              : Windows Server 2022 Datacenter
PasswordUpdateTime           : 1715359241005
PreferredDeploymentId        : 
PreferredDeploymentId1       : 
PreferredDeploymentName      : 
PrincipalName                : POSH\dc01$
ProtectAt                    : 
ProtectedAt                  : 
ProtectionState              : 10
RpcMonitored                 : True
RpcProtectAt                 : 1718895600000
RpcProtectedAt               : 
RpcProtectionState           : 5
ServicePrincipleNames        : 
Sid                          : 
Source                       : 3
StateAssetId                 : a:a:VWW2G2C8
StateIdentityProtectAt       : 
StateIdentityProtectedAt     : 
StateIdentityProtectionState : 1
StateIsAssetConnected        : True
StateLastConnectedAt         : 1716123955616
StateLastDisconnectedAt      : 
StateProtectAt               : 
StateProtectedAt             : 
StateProtectionState         : 10
StateRpcProtectAt            : 1718895600000
StateRpcProtectedAt          : 
StateRpcProtectionState      : 5
UserAccountControl           : 
```

This cmdlet lists assets in RPC learning.

### Example 2: List next page of assets in RPC learning
```powershell
(Get-ZNAssetsRpcQueued -Offset 10).Items
```

Use offset to get the next page of Assets in RPC learning.

