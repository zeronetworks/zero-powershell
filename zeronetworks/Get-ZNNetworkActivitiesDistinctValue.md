---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znnetworkactivitiesdistinctvalue
schema: 2.0.0
---

# Get-ZNNetworkActivitiesDistinctValue

## SYNOPSIS
Returns a list of distinct values for a field in network activities.

## SYNTAX

```
Get-ZNNetworkActivitiesDistinctValue -FieldName <String> [-AccountName <String>] [-From <Int64>]
 [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of distinct values for a field in network activities.

## EXAMPLES

### Example 1: List distinct value for a logon activities field
```powershell
(Get-ZNNetworkActivitiesDistinctValue -FieldName dstPort).ItemAggregations
```

```output
ActivitiesDistictValuePort   : 80
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 31812
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
Count                        : 29887
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
Count                        : 6365
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
Count                        : 6056
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 6
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 123
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 5071
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 17
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
Count                        : 3798
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

### -FieldName
The field name to filter on

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -From
startTime in epoch(ms)

```yaml
Type: System.Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Search
Test to search for

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IActivitiesDistictValuesList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS

