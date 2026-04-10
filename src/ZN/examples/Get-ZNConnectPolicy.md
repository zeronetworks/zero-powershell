### Example 1: List Connect policies
```powershell
Get-ZNConnectPolicy
```

```output
AllowedAssetIds              : {Any asset}
AllowedAssetSources          : {Any repository}
AllowedDestinations          : {Internal subnets}
AllowedRegions               : {Any region}
AllowedUserIds               : {Any user}
ConnectivityStateAfterReboot : 1
CreatedAt                    : 1746151937604
CreatedByDomain              : 
CreatedByEmail               : nicholas+staging@zeronetworks.com
CreatedById                  : 11778dee-127b-4677-bbba-734040606532
CreatedByName                : 
Description                  : 
ExcludedAssetIds             : {}
ExcludedUserIds              : {}
ForceSsoAuthentication       : False
Id                           : v:a:0flplERh
Name                         : Default
SessionTtlHours              : 168
UpdatedAt                    : 1746151937604
UpdatedByDomain              : 
UpdatedByEmail               : nicholas+staging@zeronetworks.com
UpdatedById                  : 11778dee-127b-4677-bbba-734040606532
UpdatedByName                : 
```

This cmdlet lists Connect policies.
