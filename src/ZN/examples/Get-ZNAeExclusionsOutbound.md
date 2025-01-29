### Example 1: List AE Inbound Exclusions
```powershell
(Get-ZNAeExclusionsOutbound).Items
```

```output
Action                                 : 1
ActivitiesCount                        : 1
ApprovedAt                             : 
ApprovedById                           : 
ApprovedByName                         : 
AssignedDeploymentName                 : 
ComplimentarySwitchRuleId              : 
CreatedAt                              : 1728312799011
CreatedByEmail                         : 
CreatedByEnforcementSource             : 5
CreatedById                            : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName                          : Zero Networks
CreatedByUserRole                      : 1
DeletedAt                              : 1728313676837
DeletedById                            : 1f352ed0-86f1-454f-90a5-592c197c8000
DeletedByName                          : Zero Networks
Description                            : 
Direction                              : 2
ExcludedEntityInfos                    : {}
ExcludedLocalIdsList                   : {}
ExpiresAt                              : 
HealthStateHealthIssuesList            : 
HealthStateHealthStatus                : 
IPSecOpt                               : 1
Id                                     : e4beaac0-2f57-44f0-85a3-fe7dd6371322
IdNamePairId                           : 
LocalEntityId                          : a:a:5pBO4Cfn
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
LocalProcessesList                     : {C:\program 
                                         files\google\chrome\application\chrome.exe}
ParentId                               : 
ParentType                             : 0
PortsList                              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.P
                                         ortsListItem}
PreferredDeploymentId1                 : 
PreferredDeploymentName                : 
RemoteEntityIdsList                    : {b:17www.google.com}
RemoteEntityInfos                      : {www.google.com}
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
UpdatedAt                              : 1728313676825
UpdatedById                            : 1f352ed0-86f1-454f-90a5-592c197c8000
UpdatedByName                          : Zero Networks

Action                                 : 1
ActivitiesCount                        : 1
ApprovedAt                             : 
ApprovedById                           : 
ApprovedByName                         : 
AssignedDeploymentName                 : 
ComplimentarySwitchRuleId              : 
CreatedAt                              : 1728313398214
CreatedByEmail                         : 
CreatedByEnforcementSource             : 5
CreatedById                            : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName                          : Zero Networks
CreatedByUserRole                      : 1
DeletedAt                              : 1728313673944
DeletedById                            : 1f352ed0-86f1-454f-90a5-592c197c8000
DeletedByName                          : Zero Networks
Description                            : Created from activity
Direction                              : 2
ExcludedEntityInfos                    : {}
ExcludedLocalIdsList                   : {}
ExpiresAt                              : 
HealthStateHealthIssuesList            : 
HealthStateHealthStatus                : 
IPSecOpt                               : 1
Id                                     : deb6fa76-6930-44ce-b393-b1083086716d
IdNamePairId                           : 
LocalEntityId                          : a:a:5pBO4Cfn
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
LocalProcessesList                     : {C:\program 
                                         files\google\chrome\application\chrome.exe}
ParentId                               : 
ParentType                             : 0
PortsList                              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.P
                                         ortsListItem}
PreferredDeploymentId1                 : 
PreferredDeploymentName                : 
RemoteEntityIdsList                    : {b:128efa4b2420, b:17www.wigleven.com}
RemoteEntityInfos                      : {142.250.75.36, www.wigleven.com}
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
UpdatedAt                              : 1728313673932
UpdatedById                            : 
UpdatedByName                          : 
```

This cmdlet lists AE Outbound Exclusions.

### Example 2: Page through results
```powershell
(Get-ZNAeExclusionsOutbound -Offset 20).Items
```

This cmdlet uses limit and offset to handle paging.
