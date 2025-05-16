### Example 1: List distinct value for a logon activities field
```powershell
(Get-ZNLogonActivitiesDistinctValue -FieldName process).ItemAggregations
```

```output
ActivitiesDistictValuePort   : 
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 387
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : clussvc.exe
PortProtocol                 : 
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 60
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : rhs.exe
PortProtocol                 : 
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 24
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : svchost.exe (UserManager)
PortProtocol                 : 
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 4
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : lsass.exe
PortProtocol                 : 
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 
```

This cmdlet lists the distinct values for a logon activities field.
