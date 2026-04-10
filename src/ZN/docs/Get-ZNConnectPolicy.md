---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znconnectpolicy
schema: 2.0.0
---

# Get-ZNConnectPolicy

## SYNOPSIS
List Connect Policies (User Access Configurations)

## SYNTAX

```
Get-ZNConnectPolicy [-AccountName <String>] [-Limit <Int32>] [-Offset <Int32>] [<CommonParameters>]
```

## DESCRIPTION
List Connect Policies (User Access Configurations)

## EXAMPLES

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

## PARAMETERS

### -AccountName
this value is per customer / partner

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: (Read-ZNJWTtoken $env:ZNApiKey).aud.split(".")[0]
Accept pipeline input: False
Accept wildcard characters: False
```

### -Limit
Limit the return results

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 10
Accept pipeline input: False
Accept wildcard characters: False
```

### -Offset
Used to page through results

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IConnectUserAccessConfigList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS

