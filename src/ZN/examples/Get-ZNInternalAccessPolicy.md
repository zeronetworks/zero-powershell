### Example 1: List Internal Access Policies
```powershell
(Get-ZNInternalAccessPolicy).Items
```

```output
AssignedDeploymentName               : 
ChangeTicket                         : 
CreatedAt                            : 1774889856481
CreatedByEmail                       : 
CreatedByEnforcementSource           : 0
CreatedById                          : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName                        : Zero Networks
CreatedByUserRole                    : 1
DeploymentClusterId                  : 
DeploymentClusterName                : 
Description                          : 
DstAssetId                           : g:t:5Vda83cd
DstAssetInfoAssetStatus              : 
DstAssetInfoAssetType                : 
DstAssetInfoAssignedDeploymentId     : 
DstAssetInfoBreakGlassActivated      : 
DstAssetInfoCloudConnectorVersion    : 
DstAssetInfoDeploymentaClusterId     : 
DstAssetInfoDeploymentsClusterSource : 
DstAssetInfoDomain                   : tag
DstAssetInfoEnforcementMethod        : 
DstAssetInfoExternalDeviceId         : 
DstAssetInfoFqdn                     : 
DstAssetInfoHasDns                   : 
DstAssetInfoIPSpace                  : 
DstAssetInfoId                       : g:t:5Vda83cd
DstAssetInfoIdentityProtectAt        : 
DstAssetInfoIdentityProtectedAt      : 
DstAssetInfoIdentityProtectionState  : 
DstAssetInfoInactiveReason           : 
DstAssetInfoInactiveSince            : 
DstAssetInfoIpv4Addresses            : 
DstAssetInfoIpv6Addresses            : 
DstAssetInfoIsIPSecConfigured        : 
DstAssetInfoIsQuarantined            : 
DstAssetInfoLastLogon                : 
DstAssetInfoManufacturer             : 
DstAssetInfoName                     : Externally facing servers
DstAssetInfoOSType                   : 
DstAssetInfoOperatingSystem          : 
DstAssetInfoOtLocattionInterfaceName : 
DstAssetInfoOtLocattionName          : 
DstAssetInfoOtLocattionSwitchId      : 
DstAssetInfoOutboundRestriction      : 
DstAssetInfoPasswordUpdateTime       : 
DstAssetInfoPreferredDeploymentId    : 
DstAssetInfoPrincipalName            : 
DstAssetInfoProtectAt                : 
DstAssetInfoProtectedAt              : 
DstAssetInfoProtectionState          : 
DstAssetInfoPurdueLevel              : 
DstAssetInfoRpcMonitored             : 
DstAssetInfoRpcProtectAt             : 
DstAssetInfoRpcProtectedAt           : 
DstAssetInfoRpcProtectionState       : 
DstAssetInfoSource                   : 
DstAssetInfoSwitchLocationOverridden : 
DstPortsList                         : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
DstProcessNamesList                  : {*}
EnvironmentGroupId                   : 
EnvironmentGroupName                 : 
HealthStateHealthIssuesList          : 
HealthStateHealthStatus              : 
Id                                   : p:i:yderI9bF
IdNamePairId                         : 
Name                                 : External Servers
PreferredDeploymentId1               : 
PreferredDeploymentName              : 
RuleDuration                         : 6
SrcUserIdsList                       : {b:111001}
SrcUserInfos                         : {Any user}
State                                : 1
StateAssetId                         : 
StateIdentityProtectAt               : 
StateIdentityProtectedAt             : 
StateIdentityProtectionState         : 
StateIsAssetConnected                : 
StateLastConnectedAt                 : 
StateLastDisconnectedAt              : 
StateProtectAt                       : 
StateProtectedAt                     : 
StateProtectionState                 : 
StateRpcProtectAt                    : 
StateRpcProtectedAt                  : 
StateRpcProtectionState              : 
UpdatedAt                            : 1774889856481
UpdatedById                          : 
UpdatedByName                        : 
```

This cmdlet lists Internal Access Policies.

### Example 2: Get an Internal Access Policies
```powershell
Get-ZNInternalAccessPolicy -PolicyId p:i:yderI9bF
```

```output
AssignedDeploymentName               : 
CreatedByEmail                       : 
CreatedByEnforcementSource           : 0
CreatedById                          : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName                        : Zero Networks
CreatedByUserRole                    : 1
DeploymentClusterId                  : 
DeploymentClusterName                : 
DstAssetInfoAssetStatus              : 
DstAssetInfoAssetType                : 
DstAssetInfoAssignedDeploymentId     : 
DstAssetInfoBreakGlassActivated      : 
DstAssetInfoCloudConnectorVersion    : 
DstAssetInfoDeploymentaClusterId     : 
DstAssetInfoDeploymentsClusterSource : 
DstAssetInfoDomain                   : tag
DstAssetInfoEnforcementMethod        : 
DstAssetInfoExternalDeviceId         : 
DstAssetInfoFqdn                     : 
DstAssetInfoHasDns                   : 
DstAssetInfoIPSpace                  : 
DstAssetInfoId                       : g:t:5Vda83cd
DstAssetInfoIdentityProtectAt        : 
DstAssetInfoIdentityProtectedAt      : 
DstAssetInfoIdentityProtectionState  : 
DstAssetInfoInactiveReason           : 
DstAssetInfoInactiveSince            : 
DstAssetInfoIpv4Addresses            : 
DstAssetInfoIpv6Addresses            : 
DstAssetInfoIsIPSecConfigured        : 
DstAssetInfoIsQuarantined            : 
DstAssetInfoLastLogon                : 
DstAssetInfoManufacturer             : 
DstAssetInfoName                     : Externally facing servers
DstAssetInfoOSType                   : 
DstAssetInfoOperatingSystem          : 
DstAssetInfoOtLocattionInterfaceName : 
DstAssetInfoOtLocattionName          : 
DstAssetInfoOtLocattionSwitchId      : 
DstAssetInfoOutboundRestriction      : 
DstAssetInfoPasswordUpdateTime       : 
DstAssetInfoPreferredDeploymentId    : 
DstAssetInfoPrincipalName            : 
DstAssetInfoProtectAt                : 
DstAssetInfoProtectedAt              : 
DstAssetInfoProtectionState          : 
DstAssetInfoPurdueLevel              : 
DstAssetInfoRpcMonitored             : 
DstAssetInfoRpcProtectAt             : 
DstAssetInfoRpcProtectedAt           : 
DstAssetInfoRpcProtectionState       : 
DstAssetInfoSource                   : 
DstAssetInfoSwitchLocationOverridden : 
EnvironmentGroupId                   : 
EnvironmentGroupName                 : 
HealthStateHealthIssuesList          : 
HealthStateHealthStatus              : 
IdNamePairId                         : 
ItemChangeTicket                     : 
ItemCreatedAt                        : 1774889856481
ItemDescription                      : 
ItemDstAssetId                       : g:t:5Vda83cd
ItemDstPortsList                     : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemDstProcessNamesList              : {*}
ItemId                               : p:i:yderI9bF
ItemName                             : External Servers
ItemRuleDuration                     : 6
ItemSrcUserIdsList                   : {b:111001}
ItemSrcUserInfos                     : {Any user}
ItemState                            : 1
ItemUpdatedAt                        : 1774889856481
PreferredDeploymentId1               : 
PreferredDeploymentName              : 
StateAssetId                         : 
StateIdentityProtectAt               : 
StateIdentityProtectedAt             : 
StateIdentityProtectionState         : 
StateIsAssetConnected                : 
StateLastConnectedAt                 : 
StateLastDisconnectedAt              : 
StateProtectAt                       : 
StateProtectedAt                     : 
StateProtectionState                 : 
StateRpcProtectAt                    : 
StateRpcProtectedAt                  : 
StateRpcProtectionState              : 
UpdatedById                          : 
UpdatedByName                        : 
```

This cmdlet gets an Internal Access Policy.
