### Example 1: List AE Inbound Exclusions
```powershell
(Get-ZNAeExclusionsInbound).Items
```

```output
Action                                 : 1
ActivitiesCount                        : 1
ApprovedAt                             : 
ApprovedById                           : 
ApprovedByName                         : 
AssignedDeploymentName                 : 
ComplimentarySwitchRuleId              : 
CreatedAt                              : 1730108830162
CreatedByEmail                         : 
CreatedByEnforcementSource             : 5
CreatedById                            : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName                          : Zero Networks
CreatedByUserRole                      : 1
DeletedAt                              : 1730109060454
DeletedById                            : 1f352ed0-86f1-454f-90a5-592c197c8000
DeletedByName                          : Zero Networks
Description                            : 
Direction                              : 1
ExcludedEntityInfos                    : {}
ExcludedLocalIdsList                   : {}
ExpiresAt                              : 
HealthStateHealthIssuesList            : 
HealthStateHealthStatus                : 
IPSecOpt                               : 1
Id                                     : 053a0149-3857-4189-8649-16818d14ba26
IdNamePairId                           : 
LocalEntityId                          : a:a:kP1uiAQy
LocalEntityInfoAssetStatus             : 
LocalEntityInfoAssetType               : 
LocalEntityInfoAssignedDeploymentId    : 
LocalEntityInfoBreakGlassActivated     : 
LocalEntityInfoCloudConnectorVersion   : 
LocalEntityInfoDomain                  : 
LocalEntityInfoFqdn                    : 
LocalEntityInfoId                      : 
LocalEntityInfoIdentityProtectAt       : 
LocalEntityInfoIdentityProtectionState : 
LocalEntityInfoInactiveReason          : 
LocalEntityInfoIpv4Addresses           : 
LocalEntityInfoIpv6Addresses           : 
LocalEntityInfoLastLogon               : 
LocalEntityInfoName                    : 
LocalEntityInfoOperatingSystem         : 
LocalEntityInfoPasswordUpdateTime      : 
LocalEntityInfoPreferredDeploymentId   : 
LocalEntityInfoPrincipalName           : 
LocalEntityInfoProtectedAt             : 
LocalEntityInfoProtectionState         : 
LocalEntityInfoRpcMonitored            : 
LocalEntityInfoRpcProtectedAt          : 
LocalEntityInfoRpcProtectionState      : 
LocalEntityInfoSource                  : 
LocalEntitySuccessor                   : 
LocalProcessesList                     : {*}
ParentId                               : 
ParentType                             : 0
PortsList                              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
PreferredDeploymentId1                 : 
PreferredDeploymentName                : 
RemoteEntityIdsList                    : {b:12c0a8c9fe20}
RemoteEntityInfos                      : {192.168.201.254}
Ruleclass                              : 
ServicesList                           : {}
SrcUserInfos                           : {}
SrcUsersList                           : {}
State                                  : 3
StateAssetId                           : 
StateIdentityProtectAt                 : 
StateIdentityProtectionState           : 
StateIsAssetConnected                  : 
StateLastConnectedAt                   : 
StateLastDisconnectedAt                : 
StateProtectedAt                       : 
StateProtectionState                   : 
StateRpcProtectedAt                    : 
StateRpcProtectionState                : 
UpdatedAt                              : 1730109060434
UpdatedById                            : 
UpdatedByName                          : 

Action                                 : 1
ActivitiesCount                        : 0
ApprovedAt                             : 
ApprovedById                           : 
ApprovedByName                         : 
AssignedDeploymentName                 : 
ComplimentarySwitchRuleId              : 
CreatedAt                              : 1677061288789
CreatedByEmail                         : 
CreatedByEnforcementSource             : 5
CreatedById                            : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName                          : Zero Networks
CreatedByUserRole                      : 1
DeletedAt                              : 1689097393365
DeletedById                            : 
DeletedByName                          : 
Description                            : 
Direction                              : 1
ExcludedEntityInfos                    : {}
ExcludedLocalIdsList                   : {}
ExpiresAt                              : 
HealthStateHealthIssuesList            : 
HealthStateHealthStatus                : 
IPSecOpt                               : 1
Id                                     : bdcef3e8-4b00-4346-837b-46bfe8dc4b02
IdNamePairId                           : 
LocalEntityId                          : a:a:J9CCUyen
LocalEntityInfoAssetStatus             : 
LocalEntityInfoAssetType               : 
LocalEntityInfoAssignedDeploymentId    : 
LocalEntityInfoBreakGlassActivated     : 
LocalEntityInfoCloudConnectorVersion   : 
LocalEntityInfoDomain                  : 
LocalEntityInfoFqdn                    : 
LocalEntityInfoId                      : 
LocalEntityInfoIdentityProtectAt       : 
LocalEntityInfoIdentityProtectionState : 
LocalEntityInfoInactiveReason          : 
LocalEntityInfoIpv4Addresses           : 
LocalEntityInfoIpv6Addresses           : 
LocalEntityInfoLastLogon               : 
LocalEntityInfoName                    : 
LocalEntityInfoOperatingSystem         : 
LocalEntityInfoPasswordUpdateTime      : 
LocalEntityInfoPreferredDeploymentId   : 
LocalEntityInfoPrincipalName           : 
LocalEntityInfoProtectedAt             : 
LocalEntityInfoProtectionState         : 
LocalEntityInfoRpcMonitored            : 
LocalEntityInfoRpcProtectedAt          : 
LocalEntityInfoRpcProtectionState      : 
LocalEntityInfoSource                  : 
LocalEntitySuccessor                   : 
LocalProcessesList                     : {*}
ParentId                               : 
ParentType                             : 0
PortsList                              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
PreferredDeploymentId1                 : 
PreferredDeploymentName                : 
RemoteEntityIdsList                    : {a:a:0n0gAS5K}
RemoteEntityInfos                      : {SHLUPO-LAPTOP}
Ruleclass                              : 
ServicesList                           : {}
SrcUserInfos                           : {}
SrcUsersList                           : {}
State                                  : 3
StateAssetId                           : 
StateIdentityProtectAt                 : 
StateIdentityProtectionState           : 
StateIsAssetConnected                  : 
StateLastConnectedAt                   : 
StateLastDisconnectedAt                : 
StateProtectedAt                       : 
StateProtectionState                   : 
StateRpcProtectedAt                    : 
StateRpcProtectionState                : 
UpdatedAt                              : 1689097393365
UpdatedById                            : 
UpdatedByName                          :
```

This cmdlet lists AE Inbound Exclusions.

### Example 2: Page through results
```powershell
(Get-ZNAeExclusionsInbound -Offset 20).Items
```

This cmdlet uses limit and offset to handle paging.
