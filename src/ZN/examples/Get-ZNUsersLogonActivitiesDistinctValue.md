### Example 1: List distinct value for a logon activities field
```powershell
$user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
(Get-ZNUserLogonActivitiesDistinctValue -UserId $user.Id -FieldName process).ItemAggregations

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
Count                        : 15
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
Count                        : 1
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
