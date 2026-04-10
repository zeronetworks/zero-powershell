### Example 1: Update policy
```powershell
Update-ZNInternalAccessPolicy -PolicyId "p:i:yderI9bF" -Description "NewDescription"
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
ItemDescription                      : NewDescription
ItemDstAssetId                       : g:t:5Vda83cd
ItemDstPortsList                     : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemDstProcessNamesList              : {*}
ItemId                               : p:i:yderI9bF
ItemName                             : External Servers
ItemRuleDuration                     : 6
ItemSrcUserIdsList                   : {b:111001}
ItemSrcUserInfos                     : {Any user}
ItemState                            : 1
ItemUpdatedAt                        : 1775685502284
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
UpdatedById                          : m:3929d40ebf7ecfe8dbce815b1c97ea93c2b2aa59
UpdatedByName                        : poshtesting
```

This cmdlet updates an Internal Access policy.