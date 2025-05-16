### Example 1: List distinct value for a logon activities field
```powershell
$user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
(Get-ZNUsersNetworkActivitiesDistinctValue -User $user.id -FieldName dstPort).ItemAggregations
```

```output
ActivitiesDistictValuePort   : 443
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 3808
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 6
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 135
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 2549
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 6
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 389
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 2547
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 6
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 49676
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 1733
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 6
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 49668
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 816
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 6
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 49667
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 365
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 6
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 80
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 84
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 6
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 8009
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 43
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 6
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 443
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 38
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 17
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 5985
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 23
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 6
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 22
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 13
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 6
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 
```

This cmdlet lists the distinct values for a network activities field.
