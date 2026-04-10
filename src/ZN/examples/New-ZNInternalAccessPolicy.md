### Example 1: Create internal access policy
```powershell
$dest = (Get-ZNInternalAccessPolicyDestinationAssetsCandidate -Search ml01).Items
$portsList = New-ZNPortsList -Protocol TCP -Ports 22
$sourceuser = (Get-ZNInternalAccessPolicySourceUserCandidate -Search "any user").Items
New-ZNInternalAccessPolicy -DstAssetId $dest.id -DstPortsList @($portsList) -DstProcessNamesList @(*) -Name ManLinux -RuleDuration 6 -SrcUserIdsList @($sourceUser.id) -State 1
```

```output
AssignedDeploymentName               : 
CreatedByEmail                       : 
CreatedByEnforcementSource           : 0
CreatedById                          : m:3929d40ebf7ecfe8dbce815b1c97ea93c2b2aa59
CreatedByName                        : poshtesting
CreatedByUserRole                    : 4
DeploymentClusterId                  : 
DeploymentClusterName                : 
DstAssetInfoAssetStatus              : 2
DstAssetInfoAssetType                : 2
DstAssetInfoAssignedDeploymentId     : 
DstAssetInfoBreakGlassActivated      : False
DstAssetInfoCloudConnectorVersion    : 
DstAssetInfoDeploymentaClusterId     : 
DstAssetInfoDeploymentsClusterSource : 6
DstAssetInfoDomain                   : 
DstAssetInfoEnforcementMethod        : 0
DstAssetInfoExternalDeviceId         : 
DstAssetInfoFqdn                     : ml01.posh.local
DstAssetInfoHasDns                   : True
DstAssetInfoIPSpace                  : 0
DstAssetInfoId                       : a:l:fyf7WzCt
DstAssetInfoIdentityProtectAt        : 
DstAssetInfoIdentityProtectedAt      : 
DstAssetInfoIdentityProtectionState  : 1
DstAssetInfoInactiveReason           : 3
DstAssetInfoInactiveSince            : 
DstAssetInfoIpv4Addresses            : {192.168.5.33}
DstAssetInfoIpv6Addresses            : {fe80::20c:29ff:fee8:3aeb}
DstAssetInfoIsIPSecConfigured        : False
DstAssetInfoIsQuarantined            : False
DstAssetInfoLastLogon                : 
DstAssetInfoManufacturer             : 
DstAssetInfoName                     : ml01
DstAssetInfoOSType                   : 3
DstAssetInfoOperatingSystem          : Ubuntu 24.10
DstAssetInfoOtLocattionInterfaceName : 
DstAssetInfoOtLocattionName          : 
DstAssetInfoOtLocattionSwitchId      : 
DstAssetInfoOutboundRestriction      : 1
DstAssetInfoPasswordUpdateTime       : 
DstAssetInfoPreferredDeploymentId    : 
DstAssetInfoPrincipalName            : 
DstAssetInfoProtectAt                : 
DstAssetInfoProtectedAt              : 
DstAssetInfoProtectionState          : 2
DstAssetInfoPurdueLevel              : 0
DstAssetInfoRpcMonitored             : False
DstAssetInfoRpcProtectAt             : 
DstAssetInfoRpcProtectedAt           : 
DstAssetInfoRpcProtectionState       : 1
DstAssetInfoSource                   : 15
DstAssetInfoSwitchLocationOverridden : False
EnvironmentGroupId                   : 
EnvironmentGroupName                 : 
HealthStateHealthIssuesList          : {}
HealthStateHealthStatus              : 3
IdNamePairId                         : 
ItemChangeTicket                     : 
ItemCreatedAt                        : 1775244954986
ItemDescription                      : 
ItemDstAssetId                       : a:l:fyf7WzCt
ItemDstPortsList                     : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemDstProcessNamesList              : {*}
ItemId                               : p:i:GhTKcqdI
ItemName                             : ManLinux
ItemRuleDuration                     : 6
ItemSrcUserIdsList                   : {b:111001}
ItemSrcUserInfos                     : {Any user}
ItemState                            : 1
ItemUpdatedAt                        : 1775244954986
PreferredDeploymentId1               : 
PreferredDeploymentName              : 
StateAssetId                         : a:l:fyf7WzCt
StateIdentityProtectAt               : 
StateIdentityProtectedAt             : 
StateIdentityProtectionState         : 1
StateIsAssetConnected                : False
StateLastConnectedAt                 : 
StateLastDisconnectedAt              : 1765989728661
StateProtectAt                       : 
StateProtectedAt                     : 
StateProtectionState                 : 2
StateRpcProtectAt                    : 
StateRpcProtectedAt                  : 
StateRpcProtectionState              : 1
UpdatedById                          : 
UpdatedByName                        : 
```

This cmdlet creates an internal access policy.
