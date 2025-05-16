### Example 1: List distinct value for a logon activities field
```powershell
(Get-ZNAssetLogonActivitiesDistinctValue -AssetId $asset -FieldName process).ItemAggregations
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
Count                        : 4
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : svchost.exe (UserManager)
PortProtocol                 : 
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            :
```

This cmdlet lists the distinct values for a logon activities field.
